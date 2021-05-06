import 'package:agenda/application/users_watcher/users_watcher_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/home/users_list/widgets/users_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersListProvider extends StatelessWidget {
  const UsersListProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      child: Container(
        color: Colors.white,
        width: 250,
        child: BlocProvider(
          create: (context) => getIt<UsersWatcherBloc>()
            ..add(const UsersWatcherEvent.watchAll()),
          child: BlocConsumer<UsersWatcherBloc, UsersWatcherState>(
            listener: (context, state) {
              state.maybeWhen(
                loadFailure: (failure) {
                  return ScaffoldMessenger.of(context).showSnackBar(
                    AppSnackBar.errorSnackBar(
                      failure.map(
                        unexptected: (_) => "Something went wrong",
                        insufficientPermission: (_) =>
                            "Insufficient permission",
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
                initial: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loadFailure: (_) => const Center(
                  child: Text("Could not load users."),
                ),
                loadSuccess: (users) => UsersList(users: users.users),
              );
            },
          ),
        ),
      ),
    );
  }
}

// class UsersListProvider extends StatelessWidget {
//   const UsersListProvider({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: UsersList(),
//     );
//   }
// }
