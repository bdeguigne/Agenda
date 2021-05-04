import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/application/users_watcher/users_watcher_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/pages/home/widgets/home_widget.dart';
import 'package:agenda/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: BlocProvider(
  //       create: (context) =>
  //           getIt<UsersWatcherBloc>()..add(const UsersWatcherEvent.watchAll()),
  //       child: MultiBlocListener(
  //           listeners: [
  //             BlocListener<AuthBloc, AuthState>(
  //               listener: (context, state) {
  //                 state.when(
  //                   initial: () {},
  //                   authenticated: () {},
  //                   unauthenticated: () => ExtendedNavigator.of(context)
  //                       .replace(Routes.signInPage),
  //                 );
  //               },
  //             ),
  //             BlocListener<UsersWatcherBloc, UsersWatcherState>(
  //               listener: (context, state) {
  //                 state.when(
  //                   initial: () => print("INIT"),
  //                   loadSuccess: (users) => print("LIST USERSSS $users"),
  //                 );
  //               },
  //             ),
  //           ],
  //           child: BlocBuilder<UsersWatcherBloc, UsersWatcherState>(
  //             builder: (context, state) {
  //               return state.maybeWhen(
  //                 loadSuccess: (users) => HomeWidget(
  //                   users: users,
  //                   onSignOutPressed: () => context
  //                       .read<AuthBloc>()
  //                       .add(const AuthEvent.signedOut()),
  //                 ),
  //                 orElse: () => const CircularProgressIndicator(),
  //               );
  //             },
  //           )),
  //       // child: BlocConsumer<AuthBloc, AuthState>(
  //       //   listener: (context, state) {
  //       //     state.when(
  //       //         initial: () {},
  //       //         authenticated: () {},
  //       //         unauthenticated: () =>
  //       //             ExtendedNavigator.of(context).replace(Routes.signInPage));
  //       //   },
  //       //   builder: (context, state) {
  //       //     return HomeWidget(
  //       //       onSignOutPressed: () =>
  //       //           // context.read<AuthBloc>().add(const AuthEvent.signedOut()),
  //       //           context.read<UsersBloc>().add(const UsersEvent.watchAll()),
  //       //     );
  //       //   },
  //       // ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
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
    );
  }
}
