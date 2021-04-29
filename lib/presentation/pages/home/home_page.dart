import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/presentation/pages/home/widgets/home_widget.dart';
import 'package:agenda/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);

    return Scaffold(
      body: BlocConsumer(
        bloc: _authBloc,
        listener: (BuildContext context, AuthState state) {
          state.user.fold(
            () => ExtendedNavigator.of(context).replace(Routes.signInPage),
            (_) => print("USER !!"),
          );
        },
        builder: (context, AuthState state) {
          return context.read<AuthBloc>().state.user.fold(
            () {
              // TODO Message d'erreur et rediriger vers le login
              return const Center(
                child: Text("Waiting for user..."),
              );
            },
            (user) => HomeWidget(
              user: user,
              onSignOutPressed: () =>
                  context.read<AuthBloc>().add(const AuthEvent.signedOut()),
            ),
          );
        },
      ),
    );
  }
}
