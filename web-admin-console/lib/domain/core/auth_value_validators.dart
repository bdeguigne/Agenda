import 'package:agenda/domain/auth/auth_failure.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.auth(
      AuthValueFailure.invalidEmail(failedValue: input),
    ));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.auth(
      AuthValueFailure.invalidEmail(failedValue: input),
    ));
  }
}

Either<ValueFailure<String>, String> validateRole(String role) {
  if (role.toLowerCase() == RoleTypes.student) {
    return right(RoleTypes.student);
  }
  if (role.toLowerCase() == RoleTypes.teacher) {
    return right(RoleTypes.teacher);
  }
  if (role.toLowerCase() == RoleTypes.admin) {
    return right(RoleTypes.admin);
  }
  return left(
    ValueFailure.auth(AuthValueFailure.invalidRole(failedValue: role)),
  );
}

Either<ValueFailure<String>, String> validateName(String input) {
  if (RegExp(r"^[\p{L} ,.'-]*$",
          caseSensitive: false, unicode: true, dotAll: true)
      .hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.auth(
      AuthValueFailure.invalidName(failedValue: input),
    ));
  }
}
