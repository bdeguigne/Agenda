part of 'navigation_bloc.dart';

@freezed
abstract class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.taskPageShowed() = _TaskPageShowed;
  const factory NavigationEvent.calendarPageShowed() = _CalendarPageShowed;
  const factory NavigationEvent.homeworkFormShowed() = _HomeworkFormShowed;
}
