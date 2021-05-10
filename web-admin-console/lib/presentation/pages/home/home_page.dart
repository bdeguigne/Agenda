import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/application/details/details_bloc.dart';
import 'package:agenda/application/roles/roles_actor/roles_actor_bloc.dart';
import 'package:agenda/application/roles/roles_watcher/roles_watcher_bloc.dart';
import 'package:agenda/application/selector/selector_bloc.dart';
import 'package:agenda/application/users/users_actor/users_actor_bloc.dart';
import 'package:agenda/application/users/users_watcher/users_watcher_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/pages/home/widgets/home_widget.dart';
import 'package:agenda/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UsersWatcherBloc>()
            ..add(
              const UsersWatcherEvent.watchAll(),
            ),
        ),
        BlocProvider(
          create: (context) => DetailsBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<RolesWatcherBloc>()
            ..add(const RolesWatcherEvent.watchAll()),
        ),
        BlocProvider(
          create: (context) => SelectorBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<UsersActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<RolesActorBloc>(),
        ),
      ],
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              authenticated: () {},
              unauthenticated: () =>
                  ExtendedNavigator.of(context).replace(Routes.signInPage));
        },
        builder: (context, state) {
          return context.read<AuthBloc>().state.maybeWhen(
                authenticated: () => HomeWidget(
                  onSignOutPressed: () => context.read<AuthBloc>().add(
                        const AuthEvent.signedOut(),
                      ),
                ),
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
        },
      ),
    );
  }
}
