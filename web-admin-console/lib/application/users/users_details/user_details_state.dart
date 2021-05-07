part of 'user_details_bloc.dart';

@freezed
abstract class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial() = _Initial;
  const factory UserDetailsState.userSelected(User user) = _UserSelected;
}
