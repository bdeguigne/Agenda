part of 'details_bloc.dart';

@freezed
abstract class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.userReceived(int userIndex) = _UsersReceived;
  const factory DetailsEvent.roleReceived(int roleIndex) = _RolesReceived;
}
