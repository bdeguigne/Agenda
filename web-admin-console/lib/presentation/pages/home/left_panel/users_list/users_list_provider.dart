import 'package:agenda/application/users/users_details/user_details_bloc.dart';
import 'package:agenda/application/users/users_watcher/users_watcher_bloc.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/home/left_panel/users_list/widgets/users_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersListProvider extends StatelessWidget {
  const UsersListProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UsersWatcherBloc, UsersWatcherState>(
      listener: (context, state) {
        state.maybeWhen(
          loadFailure: (failure) {
            return ScaffoldMessenger.of(context).showSnackBar(
              AppSnackBar.errorSnackBar(
                failure.map(
                  unexptected: (_) => "Something went wrong",
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
            child: Text("Could not load users."),
          ),
          loadSuccess: (users) => UsersList(
            users: users.users,
            onUserTapped: (user) => context.read<UserDetailsBloc>().add(
                  UserDetailsEvent.userReceived(user),
                ),
          ),
        );
      },
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
