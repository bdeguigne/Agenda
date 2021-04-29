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
  if (role == RoleTypes.student) {
    return right(RoleTypes.student);
  }
  if (role == RoleTypes.teacher) {
    return right(RoleTypes.teacher);
  }
  if (role == RoleTypes.admin) {
    return right(RoleTypes.admin);
  }
  return left(
    ValueFailure.auth(AuthValueFailure.invalidRole(failedValue: role)),
  );
}
