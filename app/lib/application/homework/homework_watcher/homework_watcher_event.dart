part of 'homework_watcher_bloc.dart';

@freezed
abstract class HomeworkWatcherEvent with _$HomeworkWatcherEvent {
  const factory HomeworkWatcherEvent.watchAll() = _WatchAll;
  const factory HomeworkWatcherEvent.homeworksReceived() = _HomeworksReceived;
}
