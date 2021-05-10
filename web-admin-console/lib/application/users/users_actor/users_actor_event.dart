part of 'users_actor_bloc.dart';

@freezed
abstract class UsersActorEvent with _$UsersActorEvent {
  const factory UsersActorEvent.updated(
      Map<String, dynamic> data, UniqueId userId) = _Updated;
  const factory UsersActorEvent.roleUpdated(User user, Role role) =
      _RoleUpdated;
  const factory UsersActorEvent.noUserSelected() = _NoUserSelected;
}
