part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState.initial() = _Initial;
  const factory NavigationState.taskPage() = _TaskPage;
  const factory NavigationState.calendarPage() = _CalendarPage;
  const factory NavigationState.homeworkForm() = _HomeworkForm;
}
