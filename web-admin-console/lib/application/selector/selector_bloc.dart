import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selector_event.dart';
part 'selector_state.dart';
part 'selector_bloc.freezed.dart';

class SelectorBloc extends Bloc<SelectorEvent, SelectorState> {
  SelectorBloc() : super(const _Initial());

  @override
  Stream<SelectorState> mapEventToState(
    SelectorEvent event,
  ) async* {
    yield* event.map(
      rolesShowed: (e) async* {
        yield const SelectorState.showRoles();
      },
      rightsShowed: (e) async* {
        yield const SelectorState.showRights();
      },
    );
  }
}
