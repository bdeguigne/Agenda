part of 'users_watcher_bloc.dart';

@freezed
abstract class UsersWatcherEvent with _$UsersWatcherEvent {
  const factory UsersWatcherEvent.watchAll() = WatchAll;
  const factory UsersWatcherEvent.usersReceived(
      Either<UserFailure, List<User>> failureOrUsers) = UsersReceived;
  const factory UsersWatcherEvent.test() = Test;
}
