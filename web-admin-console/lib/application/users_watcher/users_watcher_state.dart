part of 'users_watcher_bloc.dart';

@freezed
abstract class UsersWatcherState with _$UsersWatcherState {
  const factory UsersWatcherState.initial() = _Initial;
  const factory UsersWatcherState.loadSuccess(List<User> users) = LoadSuccess;
  const factory UsersWatcherState.loadFailure(UserFailure failure) =
      LoadFailure;
}
