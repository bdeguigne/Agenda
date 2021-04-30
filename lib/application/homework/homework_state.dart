part of 'homework_bloc.dart';

@freezed
abstract class HomeworkState with _$HomeworkState {
  const factory HomeworkState({
    @required bool isCreating,
    @required
        Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption,
  }) = _HomeworkState;

  factory HomeworkState.initial() => HomeworkState(
        isCreating: false,
        homeworkFailureOrSuccessOption: none(),
      );
}
