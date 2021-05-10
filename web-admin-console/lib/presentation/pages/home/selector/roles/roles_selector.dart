import 'package:agenda/application/details/details_bloc.dart';
import 'package:agenda/application/roles/roles_watcher/roles_watcher_bloc.dart';
import 'package:agenda/application/selector/selector_bloc.dart';
import 'package:agenda/application/users/users_actor/users_actor_bloc.dart';
import 'package:agenda/application/users/users_watcher/users_watcher_bloc.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/roles/role.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/home/selector/roles/widgets/roles_radios_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RolesSelector extends StatefulWidget {
  final bool isLoading;

  const RolesSelector({
    Key key,
    @required this.isLoading,
  }) : super(key: key);

  @override
  _RolesSelectorState createState() => _RolesSelectorState();
}

class _RolesSelectorState extends State<RolesSelector> {
  void updateRole(List<User> users, Role role) {
    context.read<DetailsBloc>().state.maybeMap(
          userSelected: (selected) => context.read<UsersActorBloc>().add(
                UsersActorEvent.roleUpdated(
                    users.elementAt(selected.userIndex), role),
              ),
          orElse: () => context.read<UsersActorBloc>().add(
                const UsersActorEvent.noUserSelected(),
              ),
        );
  }

  void getAllUsers(BuildContext context, Role role) {
    context.read<SelectorBloc>().add(const SelectorEvent.loadingStateChanged());
    context.read<UsersWatcherBloc>().state.map(
          initial: (_) => null,
          loadSuccess: (success) => updateRole(
            success.users,
            role,
          ),
          loadFailure: (_) => context.read<UsersActorBloc>().add(
                const UsersActorEvent.noUserSelected(),
              ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: BlocListener<UsersActorBloc, UsersActorState>(
          listener: (context, state) {
            state.maybeMap(
              updateFailure: (failure) {
                context
                    .read<SelectorBloc>()
                    .add(const SelectorEvent.loadingStateChanged());
                return ScaffoldMessenger.of(context).showSnackBar(
                  AppSnackBar.errorSnackBar(
                    failure.failure.map(
                      unexpected: (_) => "Something went wrong",
                      insufficientPermission: (_) => "Insufficient permission",
                      unableToUpdate: (_) => "Unable to update",
                    ),
                  ).toSnackBar,
                );
              },
              updateSuccess: (success) {
                context
                    .read<SelectorBloc>()
                    .add(const SelectorEvent.loadingStateChanged());
                return ScaffoldMessenger.of(context).showSnackBar(
                  AppSnackBar.successSnackBar(
                          "Successfully assign a new role to this user")
                      .toSnackBar,
                );
              },
              noUser: (_) {
                context
                    .read<SelectorBloc>()
                    .add(const SelectorEvent.loadingStateChanged());
                return ScaffoldMessenger.of(context).showSnackBar(
                    AppSnackBar.errorSnackBar("No user selected").toSnackBar);
              },
              orElse: () => null,
            );
          },
          child: BlocBuilder<RolesWatcherBloc, RolesWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (_) =>
                    const Center(child: Text("Could not load roles")),
                loadSuccess: (success) => RolesRadiosList(
                  isLoading: widget.isLoading,
                  roles: success.roles,
                  onRoleSelectedPressed: (role) => getAllUsers(context, role),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
