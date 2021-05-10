part of 'roles_actor_bloc.dart';

@freezed
abstract class RolesActorEvent with _$RolesActorEvent {
  const factory RolesActorEvent.roleUpdated(Role role) = _RoleUpdated;
  const factory RolesActorEvent.noRoleSelected() = _NoRoleSelected;
}
