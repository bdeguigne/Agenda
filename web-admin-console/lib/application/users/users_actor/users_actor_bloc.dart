import 'dart:async';

import 'package:agenda/domain/auth/auth_value_objects.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:agenda/domain/roles/roles.dart';
import 'package:agenda/domain/users/i_users_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'users_actor_event.dart';
part 'users_actor_state.dart';
part 'users_actor_bloc.freezed.dart';

@injectable
class UsersActorBloc extends Bloc<UsersActorEvent, UsersActorState> {
  final IUsersRepository _usersRepository;

  UsersActorBloc(this._usersRepository) : super(const _Initial());

  @override
  Stream<UsersActorState> mapEventToState(
    UsersActorEvent event,
  ) async* {
    yield* event.map(
      noUserSelected: (e) async* {
        yield const UsersActorState.noUser();
      },
      roleUpdated: (e) async* {
        yield const UsersActorState.initial();
        final data = {
          "permissions": {"role": e.role.name, "rights": []}
        };

        add(UsersActorEvent.updated(data, e.user.id));
      },
      updated: (e) async* {
        final possibleFailure = await _usersRepository.update(e.data, e.userId);

        yield possibleFailure.fold(
          (f) => UsersActorState.updateFailure(f),
          (_) => const UsersActorState.updateSuccess(),
        );
      },
    );
  }
}
