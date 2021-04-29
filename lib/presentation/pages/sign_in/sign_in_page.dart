import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/sign_in/widgets/sign_in_form.dart';
import 'package:agenda/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: BlocConsumer<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    AppSnackBar.errorSnackBar(
                      failure.map(
                        cancelledByUser: (_) => "Cancelled",
                        serverError: (_) => "Server error",
                        emailAlreadyInUse: (_) => "Email already in use",
                        invalidEmailAndPasswordCombination: (_) =>
                            "Invalid email and password combination",
                      ),
                    ).toSnackBar,
                  );
                },
                (user) {
                  context.read<AuthBloc>().add(AuthEvent.userUpdated(user));
                  return ExtendedNavigator.of(context).replace(Routes.homePage);
                },
              ),
            );
          },
          builder: (context, state) {
            return SignInForm(
              autoValidate: state.showErrorMessages,
              onEmailChanged: (value) => context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.emailChanged(value)),
              onEmailValidate: () =>
                  context.read<SignInFormBloc>().state.emailAddress.value.fold(
                        (f) => f.maybeMap(
                          auth: (value) => "Invalid Email",
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
              onPasswordChanged: (value) => context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
              onPasswordValidate: () =>
                  context.read<SignInFormBloc>().state.password.value.fold(
                        (f) => f.maybeMap(
                          auth: (_) => "Short Password",
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
              onSignInPressed: () => context.read<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithEmailAndPasswordPressed(),
                  ),
              onRegisterPressed: () => context.read<SignInFormBloc>().add(
                    const SignInFormEvent.registerWithEmailAndPasswordPressed(),
                  ),
              onGoogleSignInPressed: () => context
                  .read<SignInFormBloc>()
                  .add(const SignInFormEvent.signInWithGooglePressed()),
            );
          },
        ),
      ),
    );
  }
}
