import 'package:agenda/application/roles/roles_watcher_bloc.dart';
import 'package:agenda/application/users/users_watcher/users_watcher_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/pages/home/left_panel/left_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      child: Container(
        color: Colors.white,
        width: 250,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<UsersWatcherBloc>()
                ..add(const UsersWatcherEvent.watchAll()),
            ),
            BlocProvider(
              create: (context) => getIt<RolesWatcherBloc>()
                ..add(const RolesWatcherEvent.watchAll()),
            ),
          ],
          child: const LeftTabBar(),
        ),
      ),
    );
  }
}
