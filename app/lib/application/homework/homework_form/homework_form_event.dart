part of 'homework_form_bloc.dart';

@freezed
abstract class HomeworkFormEvent with _$HomeworkFormEvent {
  const factory HomeworkFormEvent.titleChanged(String title) = TitleChanged;
  const factory HomeworkFormEvent.descriptionChanged(String description) =
      DescriptionChanged;
  const factory HomeworkFormEvent.dateChanged(DateTime date) = DateChanged;
  const factory HomeworkFormEvent.documentAdded(Document document) =
      DocumentAdded;
  const factory HomeworkFormEvent.createHomeworkPressed() =
      _CreateHomeworkPressed;
}
