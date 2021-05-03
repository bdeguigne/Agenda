import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_failure.freezed.dart';

@freezed
abstract class RegisterFailure with _$RegisterFailure {
  const factory RegisterFailure.serverError() = ServerError;
  const factory RegisterFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory RegisterFailure.passwordNotMatch() = PasswordNotMatch;
}
