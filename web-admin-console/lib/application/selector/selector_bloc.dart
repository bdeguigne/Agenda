import 'dart:async';

import 'package:agenda/domain/collection_right/right.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selector_event.dart';
part 'selector_state.dart';
part 'selector_bloc.freezed.dart';

class SelectorBloc extends Bloc<SelectorEvent, SelectorState> {
  SelectorBloc() : super(SelectorState.initial());

  @override
  Stream<SelectorState> mapEventToState(
    SelectorEvent event,
  ) async* {
    yield* event.map(
      rolesShowed: (e) async* {
        yield state.copyWith(
          menu: SelectorMenu.roles,
        );
      },
      rightsShowed: (e) async* {
        yield state.copyWith(
          menu: SelectorMenu.rights,
        );
      },
      loadingStateChanged: (e) async* {
        yield state.copyWith(
          isLoading: !state.isLoading,
        );
      },
      initRights: (e) async* {
        yield state.copyWith(
          selectedRights: e.rights,
        );
      },
      rightSelected: (e) async* {
        final List<Right> rights = state.selectedRights.toList();
        rights.add(e.right);

        yield state.copyWith(selectedRights: rights);
      },
      rightDeselected: (e) async* {
        final List<Right> rights = state.selectedRights.toList();
        rights.removeAt(rights.indexOf(e.right));

        yield state.copyWith(selectedRights: rights);
      },
    );
  }
}
