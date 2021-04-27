import 'package:agenda/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/pages/sign_in/widgets/sign_in_form.dart';
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
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Row(
                          children: [
                            const Icon(Icons.close, color: Colors.white),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                failure.map(
                                  cancelledByUser: (_) => "Cancelled",
                                  serverError: (_) => "Server error",
                                  emailAlreadyInUse: (_) =>
                                      "Email already in use",
                                  invalidEmailAndPasswordCombination: (_) =>
                                      "Invalid email and password combination",
                                ),
                              ),
                            ),
                          ],
                        ),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.redAccent,
                      ));
                    },
                    (_) {
                      print("OKAY");
                      // TODO: Navigate
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
                  onEmailValidate: () => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => "Invalid email",
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
                              shortPassword: (_) => "Short Password",
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                  onSignInPressed: () => context.read<SignInFormBloc>().add(
                        const SignInFormEvent
                            .signInWithEmailAndPasswordPressed(),
                      ),
                  onGoogleSignInPressed: () => context
                      .read<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGooglePressed()),
                );
              },
            )));
  }
}
