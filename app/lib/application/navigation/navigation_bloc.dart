import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const _Initial());

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    yield* event.map(
      taskPageShowed: (e) async* {
        yield const NavigationState.taskPage();
      },
      calendarPageShowed: (e) async* {
        yield const NavigationState.calendarPage();
      },
      homeworkFormShowed: (e) async* {
        yield const NavigationState.homeworkForm();
      },
    );
  }
}
