part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @required Name firstName,
    @required Name lastName,
    @required EmailAddress email,
    @required Password password,
    @required Password confirmPassword,
    @required Role role,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<RegisterFailure, User>> authFailureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        firstName: Name(""),
        lastName: Name(""),
        email: EmailAddress(""),
        password: Password(""),
        confirmPassword: Password(""),
        role: Role.toDefault(),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
