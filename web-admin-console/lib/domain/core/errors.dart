import 'package:agenda/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString(
        'UnexpectedValueError(valueFailure: $valueFailure)');
  }
}
