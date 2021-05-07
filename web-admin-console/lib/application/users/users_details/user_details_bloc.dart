import 'dart:async';

import 'package:agenda/domain/auth/user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_event.dart';
part 'user_details_state.dart';
part 'user_details_bloc.freezed.dart';

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  UserDetailsBloc() : super(const _Initial());

  @override
  Stream<UserDetailsState> mapEventToState(
    UserDetailsEvent event,
  ) async* {
    yield* event.map(userReceived: (e) async* {
      yield UserDetailsState.userSelected(e.user);
    });
  }
}
