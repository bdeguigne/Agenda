import 'dart:async';

import 'package:agenda/domain/auth/i_auth_facade.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();

        yield userOption.fold(
          () => state.copyWith(user: none()),
          (loggedUser) => state.copyWith(user: some(loggedUser)),
        );
      },
      userUpdated: (e) async* {
        yield state.copyWith(user: some(e.user));
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield state.copyWith(user: none());
      },
    );
  }
}
