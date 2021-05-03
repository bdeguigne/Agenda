part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.firstNameChanged(String firstNameStr) =
      FirstNameChanged;
  const factory RegisterFormEvent.lastNameChanged(String lastNameStr) =
      LastNameChanged;
  const factory RegisterFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory RegisterFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory RegisterFormEvent.passwordConfirmChanged(String passwordStr) =
      PasswordConfirmChanged;
  const factory RegisterFormEvent.roleChanged(String roleValue) = RoleChanged;
  const factory RegisterFormEvent.registerButtonPressed() =
      RegisterButtonPressed;
}
