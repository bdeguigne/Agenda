part of 'homework_form_bloc.dart';

@freezed
abstract class HomeworkFormState with _$HomeworkFormState {
  const factory HomeworkFormState({
    @required String title,
    @required String description,
    @required DateTime deliveryDate,
    @required List<Document> homeworkFiles,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required
        Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption,
  }) = _HomeworkFormState;

  factory HomeworkFormState.initial() => HomeworkFormState(
        title: "",
        description: "",
        deliveryDate: DateTime.now(),
        homeworkFiles: [],
        isSubmitting: false,
        showErrorMessages: false,
        homeworkFailureOrSuccessOption: none(),
      );
}
