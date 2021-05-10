import 'dart:async';

import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/roles/i_roles_repository.dart';
import 'package:agenda/domain/roles/role.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'roles_actor_event.dart';
part 'roles_actor_state.dart';
part 'roles_actor_bloc.freezed.dart';

@injectable
class RolesActorBloc extends Bloc<RolesActorEvent, RolesActorState> {
  final IRolesRepository _rolesRepository;

  RolesActorBloc(this._rolesRepository) : super(const _Initial());

  @override
  Stream<RolesActorState> mapEventToState(
    RolesActorEvent event,
  ) async* {
    yield* event.map(
      noRoleSelected: (e) async* {
        yield const RolesActorState.noRoleSelected();
      },
      roleUpdated: (e) async* {
        yield const RolesActorState.initial();
        final possibleFailure = await _rolesRepository.update(e.role);

        yield possibleFailure.fold(
          (failure) => RolesActorState.updateFailure(failure),
          (_) => const RolesActorState.updateSuccess(),
        );
      },
    );
  }
}
