part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @required Option<User> user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(user: none());
}
