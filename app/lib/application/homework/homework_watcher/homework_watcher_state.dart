part of 'homework_watcher_bloc.dart';

@freezed
abstract class HomeworkWatcherState with _$HomeworkWatcherState {
  const factory HomeworkWatcherState.initial() = _Initial;
  const factory HomeworkWatcherState.loadSuccess(List<Homework> homeworks) =
      LoadSuccess;
  const factory HomeworkWatcherState.loadFailure(HomeworkFailure failure) =
      LoadFailure;
}
