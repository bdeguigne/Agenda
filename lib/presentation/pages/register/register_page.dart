import 'package:agenda/application/auth/auth_bloc.dart';
import 'package:agenda/application/auth/register_form/register_form_bloc.dart';
import 'package:agenda/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/register/widgets/register_form.dart';
import 'package:agenda/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterFormBloc>(),
      child: BlocConsumer<RegisterFormBloc, RegisterFormState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  AppSnackBar.errorSnackBar(
                    failure.map(
                      passwordNotMatch: (_) => "Password did not match",
                      serverError: (_) => "Server error",
                      emailAlreadyInUse: (_) => "Email already in use",
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
          return RegisterForm(
            onFNameChanged: (value) => context.read<RegisterFormBloc>().add(
                  RegisterFormEvent.firstNameChanged(value),
                ),
            onFNameValidate: () =>
                context.read<RegisterFormBloc>().state.firstName.value.fold(
                      (f) => f.maybeMap(
                          auth: (_) => "Invalid First Name",
                          orElse: () => null),
                      (_) => null,
                    ),
            onLNameChanged: (value) => context.read<RegisterFormBloc>().add(
                  RegisterFormEvent.lastNameChanged(value),
                ),
            onLNameValidate: () =>
                context.read<RegisterFormBloc>().state.lastName.value.fold(
                      (f) => f.maybeMap(
                          auth: (_) => "Invalid Last Name", orElse: () => null),
                      (_) => null,
                    ),
            autoValidate: state.showErrorMessages,
            onEmailChanged: (value) => context.read<RegisterFormBloc>().add(
                  RegisterFormEvent.emailChanged(value),
                ),
            onEmailValidate: () =>
                context.read<RegisterFormBloc>().state.email.value.fold(
                      (f) => f.maybeMap(
                          auth: (_) => "Invalid Email", orElse: () => null),
                      (_) => null,
                    ),
            onPasswordChanged: (value) => context.read<RegisterFormBloc>().add(
                  RegisterFormEvent.passwordChanged(value),
                ),
            onPasswordValidate: () =>
                context.read<RegisterFormBloc>().state.password.value.fold(
                      (f) => f.maybeMap(
                          auth: (_) => "Invalid Password", orElse: () => null),
                      (_) => null,
                    ),
            onPasswordConfirmChanged: (value) =>
                context.read<RegisterFormBloc>().add(
                      RegisterFormEvent.passwordConfirmChanged(value),
                    ),
            onPasswordConfirmValidate: () => context
                .read<RegisterFormBloc>()
                .state
                .confirmPassword
                .value
                .fold(
                  (f) => f.maybeMap(
                      auth: (_) => "Invalid Password", orElse: () => null),
                  (_) => null,
                ),
            onRoleChanged: (value) => context.read<RegisterFormBloc>().add(
                  RegisterFormEvent.roleChanged(value),
                ),
            onSignUpPressed: () => context.read<RegisterFormBloc>().add(
                  const RegisterFormEvent.registerButtonPressed(),
                ),
          );
        },
      ),
    );
  }
}
