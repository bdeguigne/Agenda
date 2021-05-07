import 'dart:async';

import 'package:agenda/domain/collection_right/i_repository.dart';
import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/roles/roles.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'roles_watcher_event.dart';
part 'roles_watcher_state.dart';
part 'roles_watcher_bloc.freezed.dart';

@injectable
class RolesWatcherBloc extends Bloc<RolesWatcherEvent, RolesWatcherState> {
  final IRepository _repository;

  RolesWatcherBloc(this._repository) : super(const _Initial());

  @override
  Stream<RolesWatcherState> mapEventToState(
    RolesWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        _repository
            .watchAllRoles(
              (failure) => add(
                RolesWatcherEvent.rolesReceived(left(failure)),
              ),
            )
            .listen(
              (users) => add(
                RolesWatcherEvent.rolesReceived(right(users)),
              ),
            );
      },
      rolesReceived: (e) async* {
        yield e.failureOrRoles.fold(
          (failure) => RolesWatcherState.loadFailure(failure),
          (List<Roles> roles) {
            print("ROOOLES $roles");
            return RolesWatcherState.loadSuccess(roles);
          },
        );
      },
    );
  }
}
