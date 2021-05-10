part of 'roles_actor_bloc.dart';

@freezed
abstract class RolesActorState with _$RolesActorState {
  const factory RolesActorState.initial() = _Initial;
  const factory RolesActorState.actionInProgress() = _ActionInProgress;
  const factory RolesActorState.noRoleSelected() = _NoRole;
  const factory RolesActorState.updateFailure(RepositoryFailure failure) =
      _UpdateFailure;
  const factory RolesActorState.updateSuccess() = _UpdateSuccess;
}
