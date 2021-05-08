import 'dart:async';

import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/roles/i_roles_repository.dart';
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
  final IRolesRepository _repository;

  RolesWatcherBloc(this._repository) : super(const _Initial());

  @override
  Stream<RolesWatcherState> mapEventToState(
    RolesWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        _repository
            .watchAll(
              (failure) => add(
                RolesWatcherEvent.rolesReceived(left(failure)),
              ),
            )
            .listen(
              (roles) => add(
                RolesWatcherEvent.rolesReceived(right(roles)),
              ),
            );
      },
      rolesReceived: (e) async* {
        yield e.failureOrRoles.fold(
          (failure) => RolesWatcherState.loadFailure(failure),
          (List<Roles> roles) => RolesWatcherState.loadSuccess(roles),
        );
      },
    );
  }
}
