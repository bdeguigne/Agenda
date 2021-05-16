import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/application/navigation/navigation_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/navigation/navigation.dart';
import 'package:agenda/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBloc(),
        ),
      ],
      child: BlocConsumer(
        bloc: _authBloc,
        listener: (BuildContext context, AuthState state) {
          state.user.fold(
              () => ExtendedNavigator.of(context).replace(Routes.signInPage),
              (_) => null);
        },
        builder: (context, AuthState state) {
          return context.read<AuthBloc>().state.user.fold(
            () {
              ExtendedNavigator.of(context).replace(Routes.signInPage);
              // TODO Message d'erreur et rediriger vers le login
              return const Scaffold(
                body: Center(
                  child: Text("Waiting for user..."),
                ),
              );
            },
            (user) => Navigation(user: user),
          );
        },
      ),
    );
  }
}
