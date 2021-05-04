import 'package:agenda/application/users_watcher/users_watcher_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/pages/home/users_list/widgets/users_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersListProvider extends StatelessWidget {
  const UsersListProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UsersWatcherBloc>()..add(const UsersWatcherEvent.watchAll()),
      child: BlocConsumer<UsersWatcherBloc, UsersWatcherState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(child: CircularProgressIndicator()),
            loadSuccess: (users) => UsersList(users: users.users),
          );
        },
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
