import 'dart:async';

import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/roles/roles.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'details_bloc.freezed.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(const _Initial());

  @override
  Stream<DetailsState> mapEventToState(
    DetailsEvent event,
  ) async* {
    yield* event.map(
      userReceived: (e) async* {
        yield DetailsState.userSelected(e.userIndex);
      },
      roleReceived: (e) async* {
        yield DetailsState.roleSelected(e.role);
      },
    );
  }
}
