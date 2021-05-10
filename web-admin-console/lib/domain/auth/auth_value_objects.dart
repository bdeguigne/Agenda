import 'package:agenda/domain/auth/user.dart';
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

  // Map<String, dynamic> toJson() => {'email': value.fold((l) => null, id)};
  Map<String, dynamic> toJson() => {'email': "test"};
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

@immutable
class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String name) {
    assert(name != null);

    return Name._(
      validateName(name),
    );
  }

  factory Name.fromJson(String jsonValue) => Name._(validateName(jsonValue));

  Map<String, dynamic> toJson() => {"name": value.getOrElse(() => null)};

  const Name._(this.value);
}
