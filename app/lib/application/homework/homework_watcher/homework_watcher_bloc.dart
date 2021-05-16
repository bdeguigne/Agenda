import 'dart:async';

import 'package:agenda/domain/homework/homework.dart';
import 'package:agenda/domain/homework/homework_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework_watcher_event.dart';
part 'homework_watcher_state.dart';
part 'homework_watcher_bloc.freezed.dart';

class HomeworkWatcherBloc
    extends Bloc<HomeworkWatcherEvent, HomeworkWatcherState> {
  HomeworkWatcherBloc() : super(const _Initial());

  @override
  Stream<HomeworkWatcherState> mapEventToState(
    HomeworkWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {},
      homeworksReceived: (e) async* {},
    );
  }
}
