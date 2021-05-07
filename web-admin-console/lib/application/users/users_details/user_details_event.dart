part of 'user_details_bloc.dart';

@freezed
abstract class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.userReceived(User user) = _UsersReceived;
}
