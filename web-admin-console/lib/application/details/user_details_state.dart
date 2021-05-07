part of 'details_bloc.dart';

@freezed
abstract class DetailsState with _$DetailsState {
  const factory DetailsState.initial() = _Initial;
  const factory DetailsState.userSelected(User user) = _UserSelected;
  const factory DetailsState.roleSelected(Roles role) = _RolesSelected;
}
