import 'package:agenda/domain/core/auth_value_validators.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';

import 'package:agenda/domain/core/failures.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  factory EmailAddress.fromJson(String jsonValue) =>
      EmailAddress._(validateEmailAddress(jsonValue));

  Map<String, dynamic> toJson() => {
        'email': "email",
      };
}

@immutable
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class Role extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Role(String role) {
    assert(role != null);
    return Role._(
      validateRole(role),
    );
  }

  const Role._(this.value);

  factory Role.fromJson(String jsonValue) => Role._(validateRole(jsonValue));

  Map<String, dynamic> toJson() => {
        'role': "role",
      };
}
