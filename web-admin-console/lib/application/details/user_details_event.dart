part of 'details_bloc.dart';

@freezed
abstract class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.userReceived(User user) = _UsersReceived;
  const factory DetailsEvent.roleReceived(Roles role) = _RolesReceived;
}
