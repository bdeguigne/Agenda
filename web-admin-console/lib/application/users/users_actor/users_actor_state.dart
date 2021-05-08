part of 'users_actor_bloc.dart';

@freezed
abstract class UsersActorState with _$UsersActorState {
  const factory UsersActorState.initial() = _Initial;
  const factory UsersActorState.actionInProgress() = _ActionInProgress;
  const factory UsersActorState.noUser() = _NoUser;
  const factory UsersActorState.updateFailure(RepositoryFailure failure) =
      _UpdateFailure;
  const factory UsersActorState.updateSuccess() = UpdateSuccess;
}
