import 'dart:async';

import 'package:agenda/domain/homework/homework.dart';
import 'package:agenda/domain/homework/homework_failure.dart';
import 'package:agenda/domain/homework/i_homework_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'homework_watcher_event.dart';
part 'homework_watcher_state.dart';
part 'homework_watcher_bloc.freezed.dart';

@injectable
class HomeworkWatcherBloc
    extends Bloc<HomeworkWatcherEvent, HomeworkWatcherState> {
  final IHomeworkRepository _homeworkRepository;

  HomeworkWatcherBloc(this._homeworkRepository) : super(const _Initial());

  @override
  Stream<HomeworkWatcherState> mapEventToState(
    HomeworkWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        _homeworkRepository
            .watchAll(
              (failure) => add(
                HomeworkWatcherEvent.homeworksReceived(left(failure)),
              ),
            )
            .listen(
              (users) => add(
                HomeworkWatcherEvent.homeworksReceived(right(users)),
              ),
            );
      },
      homeworksReceived: (e) async* {
        yield e.failureOrHomeworks.fold(
          (failure) => HomeworkWatcherState.loadFailure(failure),
          (homeworks) => HomeworkWatcherState.loadSuccess(homeworks),
        );
      },
    );
  }
}
