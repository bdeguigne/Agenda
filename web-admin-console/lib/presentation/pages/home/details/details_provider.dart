import 'package:agenda/application/details/details_bloc.dart';
import 'package:agenda/application/selector/selector_bloc.dart';
import 'package:agenda/application/users/users_watcher/users_watcher_bloc.dart';
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
      return const Center(
        child: Text("ROLE"),
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
                    roleSelected: (_) {
                      // TODO Handle role
                      setState(() {
                        _handler = DetailsHandler.roleSelected(0);
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
