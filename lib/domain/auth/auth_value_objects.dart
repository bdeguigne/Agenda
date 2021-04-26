import 'package:agenda/domain/core/auth_value_validators.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';

import 'package:agenda/domain/core/failures.dart';
import 'package:flutter/foundation.dart';

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
