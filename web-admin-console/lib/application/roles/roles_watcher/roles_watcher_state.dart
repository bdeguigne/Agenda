part of 'roles_watcher_bloc.dart';

@freezed
abstract class RolesWatcherState with _$RolesWatcherState {
  const factory RolesWatcherState.initial() = _Initial;
  const factory RolesWatcherState.loadSuccess(List<Role> roles) = LoadSuccess;
  const factory RolesWatcherState.loadFailure(RepositoryFailure failure) =
      LoadFailure;
}
