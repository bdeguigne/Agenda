import 'dart:io';

import 'package:agenda/domain/auth/auth_value_objects.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, User>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, User>> signInWithGoogle();
  Future<Either<AuthFailure, Unit>> changeProfilePicture(File path);
  Future<void> signOut();
}
