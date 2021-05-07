import 'package:agenda/application/roles/roles_watcher_bloc.dart';
import 'package:agenda/presentation/pages/home/selector/roles/widgets/roles_radios_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RolesSelector extends StatelessWidget {
  const RolesSelector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: BlocBuilder<RolesWatcherBloc, RolesWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadFailure: (_) => const Text("Could not load roles"),
              loadSuccess: (success) => RolesRadiosList(roles: success.roles),
            );
          },
        ),
      ),
    );
  }
}
