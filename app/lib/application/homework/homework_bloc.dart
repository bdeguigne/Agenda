import 'dart:async';

import 'package:agenda/domain/core/value_object.dart';
import 'package:agenda/domain/homework/homework.dart';
import 'package:agenda/domain/homework/homework_failure.dart';
import 'package:agenda/domain/homework/i_homework_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'homework_event.dart';
part 'homework_state.dart';
part 'homework_bloc.freezed.dart';

@injectable
class HomeworkBloc extends Bloc<HomeworkEvent, HomeworkState> {
  final IHomeworkRepository _homeworkRepository;

  HomeworkBloc(this._homeworkRepository) : super(HomeworkState.initial());

  @override
  Stream<HomeworkState> mapEventToState(
    HomeworkEvent event,
  ) async* {
    yield* event.map(created: (e) async* {
      yield state.copyWith(
        isCreating: true,
        homeworkFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await _homeworkRepository.create(
        Homework(id: UniqueId.fromUniqueString("DZDZDQZD"), name: "Test"),
      );
      yield state.copyWith(
        isCreating: false,
        homeworkFailureOrSuccessOption: some(failureOrSuccess),
      );
    }, getAll: (e) async* {
      yield state.copyWith(
        isCreating: true,
        homeworkFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await _homeworkRepository.getAll();
      yield state.copyWith(
        isCreating: false,
        homeworkFailureOrSuccessOption: some(failureOrSuccess),
      );
    }, getAllUsers: (e) async* {
      yield state.copyWith(
        isCreating: true,
        homeworkFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await _homeworkRepository.getAllUsers();
      yield state.copyWith(
        isCreating: false,
        homeworkFailureOrSuccessOption: some(failureOrSuccess),
      );
    });
  }
}
