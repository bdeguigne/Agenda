part of 'homework_watcher_bloc.dart';

@freezed
abstract class HomeworkWatcherEvent with _$HomeworkWatcherEvent {
  const factory HomeworkWatcherEvent.watchAll() = _WatchAll;
  const factory HomeworkWatcherEvent.homeworksReceived(
          Either<HomeworkFailure, List<Homework>> failureOrHomeworks) =
      HomeworksReceived;
}
