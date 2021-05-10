import 'package:agenda/application/collection_right/collection_right_watcher_bloc.dart';
import 'package:agenda/application/roles/roles_actor/roles_actor_bloc.dart';
import 'package:agenda/application/selector/selector_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/home/selector/rights/rights_provider.dart';
import 'package:agenda/presentation/pages/home/selector/roles/roles_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectorProvider extends StatelessWidget {
  const SelectorProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, right: 20),
      child: SizedBox(
        width: 225,
        height: double.infinity,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<CollectionRightWatcherBloc>()
                ..add(const CollectionRightWatcherEvent.watchAll()),
            ),
          ],
          child: BlocListener<RolesActorBloc, RolesActorState>(
            listener: (context, state) {
              state.maybeMap(
                updateFailure: (failure) =>
                    ScaffoldMessenger.of(context).showSnackBar(
                  AppSnackBar.errorSnackBar(
                    failure.failure.map(
                      unexpected: (_) => "Something went wrong",
                      insufficientPermission: (_) => "Insufficient permission",
                      unableToUpdate: (_) => "Unable to update",
                    ),
                  ).toSnackBar,
                ),
                updateSuccess: (_) => ScaffoldMessenger.of(context)
                    .showSnackBar(AppSnackBar.successSnackBar(
                            "Successfully updated this role")
                        .toSnackBar),
                orElse: () => null,
              );
            },
            child: BlocBuilder<SelectorBloc, SelectorState>(
              builder: (context, state) {
                if (state.menu == SelectorMenu.rights) {
                  return const RightsProvider();
                } else if (state.menu == SelectorMenu.roles) {
                  return RolesSelector(
                    isLoading: state.isLoading,
                  );
                } else {
                  return const Center(
                    child: Text("Select something first."),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
