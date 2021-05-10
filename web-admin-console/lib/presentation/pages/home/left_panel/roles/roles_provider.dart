import 'package:agenda/application/details/details_bloc.dart';
import 'package:agenda/application/roles/roles_watcher/roles_watcher_bloc.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/home/left_panel/roles/widgets/roles_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RolesProvider extends StatelessWidget {
  const RolesProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RolesWatcherBloc, RolesWatcherState>(
      listener: (context, state) {
        state.maybeWhen(
          loadFailure: (failure) {
            return ScaffoldMessenger.of(context).showSnackBar(
              AppSnackBar.errorSnackBar(
                failure.map(
                  unexpected: (_) => "Something went wrong",
                  insufficientPermission: (_) => "Insufficient permission",
                  unableToUpdate: (_) => "Unable to update",
                ),
              ).toSnackBar,
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => const Center(child: CircularProgressIndicator()),
          loadFailure: (_) => const Center(
            child: Text("Could not load roles."),
          ),
          loadSuccess: (success) => RolesList(
            roles: success.roles,
            onRoleTapped: (roleIndex) => context
                .read<DetailsBloc>()
                .add(DetailsEvent.roleReceived(roleIndex)),
          ),
        );
      },
    );
  }
}
