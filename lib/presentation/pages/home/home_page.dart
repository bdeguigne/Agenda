import 'package:agenda/application/auth/auth_bloc.dart';
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
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.when(
                initial: () {},
                authenticated: () {},
                unauthenticated: () =>
                    ExtendedNavigator.of(context).replace(Routes.signInPage));
            // TODO: implement listener
          },
          builder: (context, state) {
            return HomeWidget(
              onSignOutPressed: () =>
                  context.read<AuthBloc>().add(const AuthEvent.signedOut()),
            );
          },
        ),
      ),
    );
  }
}
