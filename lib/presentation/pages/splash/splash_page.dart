import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/presentation/pages/splash/widgets/splash_widget.dart';
import 'package:agenda/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          authenticated: () =>
              ExtendedNavigator.of(context).replace(Routes.homePage),
          unauthenticated: () =>
              ExtendedNavigator.of(context).replace(Routes.signInPage),
        );
      },
      child: const Scaffold(
        body: SplashWidget(),
      ),
    );
  }
}
