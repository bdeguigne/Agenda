import 'dart:async';

import 'package:agenda/domain/auth/auth_value_objects.dart';
import 'package:agenda/domain/auth/i_auth_facade.dart';
import 'package:agenda/domain/auth/register_failure.dart';
import 'package:agenda/domain/auth/user.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';
part 'register_form_bloc.freezed.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade _authFacade;

  RegisterFormBloc(this._authFacade) : super(RegisterFormState.initial());

  @override
  Stream<RegisterFormState> mapEventToState(
    RegisterFormEvent event,
  ) async* {
    yield* event.map(
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: Name(e.firstNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: Name(e.lastNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordConfirmChanged: (e) async* {
        yield state.copyWith(
          confirmPassword: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      roleChanged: (e) async* {
        print("ROLE CHANGED ${e.roleValue}");
        yield state.copyWith(
          role: Role(e.roleValue),
          authFailureOrSuccessOption: none(),
        );
      },
      registerButtonPressed: (e) async* {
        Either<RegisterFailure, User> failureOrSuccess;

        final isFirstNameValid = state.firstName.isValid();
        final isLastNameValid = state.lastName.isValid();
        final isEmailValid = state.email.isValid();
        final isPasswordValid = state.password.isValid();
        final isPasswordConfirmValid = state.confirmPassword.isValid();
        final isRoleValid = state.role.isValid();

        if (isEmailValid &&
            isPasswordValid &&
            isFirstNameValid &&
            isLastNameValid &&
            isPasswordConfirmValid &&
            isRoleValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.register(
            firstName: state.firstName,
            lastName: state.lastName,
            emailAddress: state.email,
            password: state.password,
            confirmPassword: state.confirmPassword,
            role: state.role,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
