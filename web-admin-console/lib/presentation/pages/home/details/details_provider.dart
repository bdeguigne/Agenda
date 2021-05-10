import 'package:agenda/application/details/details_bloc.dart';
import 'package:agenda/application/roles/roles_actor/roles_actor_bloc.dart';
import 'package:agenda/application/roles/roles_watcher/roles_watcher_bloc.dart';
import 'package:agenda/application/selector/selector_bloc.dart';
import 'package:agenda/application/users/users_watcher/users_watcher_bloc.dart';
import 'package:agenda/domain/roles/role.dart';
import 'package:agenda/presentation/pages/home/details/widgets/role_info.dart';
import 'package:agenda/presentation/pages/home/details/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsHandler {
  final bool isSelected;
  final String type;
  final int index;

  const DetailsHandler(
      {@required this.isSelected, @required this.type, @required this.index});

  factory DetailsHandler.initial() =>
      const DetailsHandler(isSelected: false, type: "", index: -1);

  factory DetailsHandler.userSelected(int i) =>
      DetailsHandler(isSelected: true, type: "user", index: i);

  factory DetailsHandler.roleSelected(int i) =>
      DetailsHandler(isSelected: true, type: "role", index: i);
}

class DetailsProvider extends StatefulWidget {
  const DetailsProvider({Key key}) : super(key: key);

  @override
  _DetailsProviderState createState() => _DetailsProviderState();
}

class _DetailsProviderState extends State<DetailsProvider> {
  DetailsHandler _handler = DetailsHandler.initial();

  Widget showSelectedItem(String type) {
    if (type == "user") {
      return BlocBuilder<UsersWatcherBloc, UsersWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_) => const Center(
              child: Text("Could not load user"),
            ),
            loadSuccess: (success) => UserInfo(
              user: success.users.elementAt(_handler.index),
              onAddRoleTapped: () => context
                  .read<SelectorBloc>()
                  .add(const SelectorEvent.rolesShowed()),
            ),
          );
        },
      );
    }
    if (type == "role") {
      return BlocBuilder<RolesWatcherBloc, RolesWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_) => const Center(
              child: Text("Could not load roles"),
            ),
            loadSuccess: (success) {
              final Role role = success.roles.elementAt(_handler.index);
              context
                  .read<SelectorBloc>()
                  .add(SelectorEvent.initRights(role.rights));
              return RoleInfo(
                onApplyTapped: () => context.read<RolesActorBloc>().add(
                      RolesActorEvent.roleUpdated(
                        role.copyWith(
                          rights:
                              context.read<SelectorBloc>().state.selectedRights,
                        ),
                      ),
                    ),
                onEditTapped: () => context
                    .read<SelectorBloc>()
                    .add(const SelectorEvent.rightsShowed()),
                role: role,
              );
            },
          );
        },
      );
      // roleSelected: (role) => RoleInfo(role: role.role),
    }

    return const Center(
      child: Text("Unexpected"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 2,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: BlocListener<DetailsBloc, DetailsState>(
                listener: (context, state) {
                  state.map(
                    initial: (_) => null,
                    userSelected: (user) {
                      setState(() {
                        _handler = DetailsHandler.userSelected(user.userIndex);
                      });
                    },
                    roleSelected: (role) {
                      setState(() {
                        _handler = DetailsHandler.roleSelected(role.roleIndex);
                      });
                    },
                  );
                },
                child: _handler.isSelected
                    ? showSelectedItem(_handler.type)
                    : const Center(
                        child: Text(
                          "Please select an item on the left panel.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
