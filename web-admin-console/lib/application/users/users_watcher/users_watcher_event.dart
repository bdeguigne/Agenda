part of 'users_watcher_bloc.dart';

@freezed
abstract class UsersWatcherEvent with _$UsersWatcherEvent {
  const factory UsersWatcherEvent.watchAll() = WatchAll;
  const factory UsersWatcherEvent.usersReceived(
      Either<RepositoryFailure, List<User>> failureOrUsers) = UsersReceived;
}
