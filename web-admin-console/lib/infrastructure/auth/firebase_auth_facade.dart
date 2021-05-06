import 'dart:async';

import 'package:agenda/domain/auth/auth_value_objects.dart';
import 'package:agenda/domain/auth/auth_failure.dart';
import 'package:agenda/domain/auth/i_auth_facade.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:agenda/domain/auth/user.dart' as app;
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firebaseFirestore,
  );

  @override
  Future<Option<app.User>> getSignedInUser() async {
    final user = await _firebaseFirestore.toDomain(_firebaseAuth.currentUser);

    if (user != null && user.isAdmin) {
      return some(user);
    }

    return none();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    EmailAddress emailAddress,
    Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      final User firebaseUser = userCredential.user;

      final userDocument =
          await _firebaseFirestore.getUserDocument(firebaseUser);

      return userDocument.fold(
        () => left(
          const AuthFailure.serverError(),
        ),
        (document) {
          final data = document.data();
          print("DATAAA $data");
          final app.Permissions permissions = app.Permissions.fromJson(
              data["permissions"] as Map<String, dynamic>);

          if (permissions.role == Role(app.RoleTypes.admin)) {
            return right(unit);
          }

          return left(const AuthFailure.userIsNotAnAdmin());

          // return right(
          //   app.User.fromJson(doc.data())
          //       .copyWith(id: UniqueId.fromUniqueString(firebaseUser.uid)),
          // );
        },
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "wrong-password" || e.code == "user-not-found") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() => _firebaseAuth.signOut();
}
