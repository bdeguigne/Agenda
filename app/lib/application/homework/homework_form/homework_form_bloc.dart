import 'dart:async';

import 'package:agenda/domain/document/document.dart';
import 'package:agenda/domain/homework/homework_failure.dart';
import 'package:agenda/domain/homework/i_homework_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'homework_form_event.dart';
part 'homework_form_state.dart';
part 'homework_form_bloc.freezed.dart';

@injectable
class HomeworkFormBloc extends Bloc<HomeworkFormEvent, HomeworkFormState> {
  final IHomeworkRepository _homeworkRepository;

  HomeworkFormBloc(this._homeworkRepository)
      : super(HomeworkFormState.initial());

  @override
  Stream<HomeworkFormState> mapEventToState(
    HomeworkFormEvent event,
  ) async* {
    yield* event.map(
      titleChanged: (e) async* {
        yield state.copyWith(
          title: e.title,
          homeworkFailureOrSuccessOption: none(),
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          description: e.description,
          homeworkFailureOrSuccessOption: none(),
        );
      },
      dateChanged: (e) async* {
        yield state.copyWith(
          deliveryDate: e.date,
          homeworkFailureOrSuccessOption: none(),
        );
      },
      documentAdded: (e) async* {
        final documents = state.homeworkFiles.toList();
        documents.add(e.document);

        yield state.copyWith(homeworkFiles: documents);
      },
      createHomeworkPressed: (e) async* {
        Either<HomeworkFailure, Unit> failureOrSuccess;

        final isTitleValid = state.title.isNotEmpty;
        final isDescriptionValid = state.description.isNotEmpty;

        if (isTitleValid && isDescriptionValid) {
          yield state.copyWith(
            isSubmitting: true,
            homeworkFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _homeworkRepository.create(
            state.title,
            state.description,
            state.deliveryDate,
            state.homeworkFiles,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          homeworkFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
