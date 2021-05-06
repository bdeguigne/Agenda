import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/application/homework/homework_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/test/widgets/test_widget.dart';
import 'package:agenda/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        toolbarHeight: 72,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: const Icon(
                Icons.account_circle_outlined,
                size: 35,
              ),
              onPressed: () => ExtendedNavigator.of(context).pushProfilePage(),
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => getIt<HomeworkBloc>(),
        child: BlocListener<HomeworkBloc, HomeworkState>(
          listener: (context, state) {
            state.homeworkFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) => ScaffoldMessenger.of(context).showSnackBar(
                  AppSnackBar.errorSnackBar(failure.map(
                    unexpected: (_) => "Something went wrong, please retry.",
                    insufficientPermission: (_) =>
                        "Sorry, you are not authorized to do that",
                  )).toSnackBar,
                ),
                (_) => ScaffoldMessenger.of(context).showSnackBar(
                  AppSnackBar.successSnackBar("Success").toSnackBar,
                ),
              ),
            );
          },
          child: BlocConsumer(
            bloc: _authBloc,
            listener: (BuildContext context, AuthState state) {
              state.user.fold(
                  () =>
                      ExtendedNavigator.of(context).replace(Routes.signInPage),
                  (_) => null);
            },
            builder: (context, AuthState state) {
              return context.read<AuthBloc>().state.user.fold(
                () {
                  // TODO Message d'erreur et rediriger vers le login
                  return const Center(
                    child: Text("Waiting for user..."),
                  );
                },
                (user) => TestWidget(
                  user: user,
                  onSignOutPressed: () =>
                      context.read<AuthBloc>().add(const AuthEvent.signedOut()),
                  onSeeHomeworkPressed: () => context.read<HomeworkBloc>().add(
                        const HomeworkEvent.getAll(),
                      ),
                  onCreateHomeworkPressed: () =>
                      context.read<HomeworkBloc>().add(
                            const HomeworkEvent.created(),
                          ),
                  onOnlyAdminPressed: () => context.read<HomeworkBloc>().add(
                        const HomeworkEvent.getAllUsers(),
                      ),
                ),
              );
            },
          ),
        ),
      ),
    );

    // return Scaffold(
    //   body: BlocConsumer(
    //     bloc: _authBloc,
    //     listener: (BuildContext context, AuthState state) {
    //       state.user.fold(
    //           () => ExtendedNavigator.of(context).replace(Routes.signInPage),
    //           (_) => null);
    //     },
    //     builder: (context, AuthState state) {
    //       return context.read<AuthBloc>().state.user.fold(
    //         () {
    //           // TODO Message d'erreur et rediriger vers le login
    //           return const Center(
    //             child: Text("Waiting for user..."),
    //           );
    //         },
    //         (user) => HomeWidget(
    //           user: user,
    //           onSignOutPressed: () =>
    //               context.read<AuthBloc>().add(const AuthEvent.signedOut()),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
