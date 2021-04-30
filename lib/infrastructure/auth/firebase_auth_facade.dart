import 'dart:async';

import 'package:agenda/domain/auth/auth_value_objects.dart';
import 'package:agenda/domain/auth/auth_failure.dart';
import 'package:agenda/domain/auth/i_auth_facade.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:agenda/domain/auth/user.dart' as app;
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseAuthFacade(
      this._firebaseAuth, this._googleSignIn, this._firebaseFirestore);

  @override
  Future<Option<app.User>> getSignedInUser() async =>
      optionOf(await _firebaseFirestore.toDomain(_firebaseAuth.currentUser));

  @override
  Future<Either<AuthFailure, app.User>> registerWithEmailAndPassword({
    EmailAddress emailAddress,
    Password password,
  }) async {
    // Pour tester les getOrCrash : Supprimer les verifications d'email dans Application layer
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final UserCredential createdUser =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      final User firebaseUser = createdUser.user;
      _firebaseFirestore.collection("users").doc(firebaseUser.uid).set(
        {
          "email": emailAddressStr,
          "role": "student",
        },
      );
      return right(
        app.User(
          id: UniqueId.fromUniqueString(firebaseUser.uid),
          email: EmailAddress(emailAddressStr),
          role: Role("student"),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, app.User>> signInWithEmailAndPassword({
    EmailAddress emailAddress,
    Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final UserCredential createdUser =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(await _firebaseFirestore.toDomain(createdUser.user));
    } on FirebaseAuthException catch (e) {
      if (e.code == "wrong-password" || e.code == "user-not-found") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, app.User>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );

      final UserCredential createdUser =
          await _firebaseAuth.signInWithCredential(authCredential);

      final User firebaseUser = createdUser.user;
      final DocumentReference documentRef =
          _firebaseFirestore.collection("users").doc(firebaseUser.uid);
      final DocumentSnapshot document = await documentRef.get();
      if (!document.exists) {
        final data = {
          "email": firebaseUser.email,
          "role": "student",
        };
        documentRef.set(data);

        return right(app.User.fromJson(data).copyWith(
          id: UniqueId.fromUniqueString(firebaseUser.uid),
        ));
      }
      return right(app.User.fromJson(document.data()).copyWith(
        id: UniqueId.fromUniqueString(firebaseUser.uid),
      ));
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
