part of 'roles_watcher_bloc.dart';

@freezed
abstract class RolesWatcherEvent with _$RolesWatcherEvent {
  const factory RolesWatcherEvent.watchAll() = WatchAll;
  const factory RolesWatcherEvent.rolesReceived(
      Either<RepositoryFailure, List<Role>> failureOrRoles) = RolesReceived;
}
