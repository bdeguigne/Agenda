import 'dart:async';

import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/users/i_users_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'users_watcher_event.dart';
part 'users_watcher_state.dart';
part 'users_watcher_bloc.freezed.dart';

@injectable
class UsersWatcherBloc extends Bloc<UsersWatcherEvent, UsersWatcherState> {
  final IUsersRepository _usersRepository;

  UsersWatcherBloc(this._usersRepository) : super(const _Initial());

  @override
  Stream<UsersWatcherState> mapEventToState(
    UsersWatcherEvent event,
  ) async* {
    yield* event.map(watchAll: (e) async* {
      _usersRepository
          .watchAll(
            (failure) => add(
              UsersWatcherEvent.usersReceived(left(failure)),
            ),
          )
          .listen(
            (users) => add(
              UsersWatcherEvent.usersReceived(right(users)),
            ),
          );
    }, usersReceived: (e) async* {
      yield e.failureOrUsers.fold(
        (failure) => UsersWatcherState.loadFailure(failure),
        (List<User> users) => UsersWatcherState.loadSuccess(users),
      );
    });
  }
}
