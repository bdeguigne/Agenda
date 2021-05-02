part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.userUpdated(User user) = UserUpdated;

  const factory AuthEvent.signedOut() = SignedOut;
}
