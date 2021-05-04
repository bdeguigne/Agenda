import 'dart:async';

import 'package:agenda/domain/auth/auth_value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_test_event.dart';
part 'bloc_test_state.dart';
part 'bloc_test_bloc.freezed.dart';

class BlocTestBloc extends Bloc<BlocTestEvent, BlocTestState> {
  BlocTestBloc() : super(BlocTestState.initial());

  @override
  Stream<BlocTestState> mapEventToState(
    BlocTestEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      yield state.copyWith(
        emailTest: none(),
      );
    });
    // TODO: implement mapEventToState
  }
}
