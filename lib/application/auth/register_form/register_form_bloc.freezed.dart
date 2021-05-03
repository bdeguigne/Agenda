// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RegisterFormEventTearOff {
  const _$RegisterFormEventTearOff();

// ignore: unused_element
  FirstNameChanged firstNameChanged(String firstNameStr) {
    return FirstNameChanged(
      firstNameStr,
    );
  }

// ignore: unused_element
  LastNameChanged lastNameChanged(String lastNameStr) {
    return LastNameChanged(
      lastNameStr,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  PasswordConfirmChanged passwordConfirmChanged(String passwordStr) {
    return PasswordConfirmChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  RoleChanged roleChanged(String roleValue) {
    return RoleChanged(
      roleValue,
    );
  }

// ignore: unused_element
  RegisterButtonPressed registerButtonPressed() {
    return const RegisterButtonPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterFormEvent = _$RegisterFormEventTearOff();

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult passwordConfirmChanged(String passwordStr),
    @required TResult roleChanged(String roleValue),
    @required TResult registerButtonPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult passwordConfirmChanged(String passwordStr),
    TResult roleChanged(String roleValue),
    TResult registerButtonPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordConfirmChanged(PasswordConfirmChanged value),
    @required TResult roleChanged(RoleChanged value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordConfirmChanged(PasswordConfirmChanged value),
    TResult roleChanged(RoleChanged value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  final RegisterFormEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterFormEvent) _then;
}

/// @nodoc
abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstNameStr});
}

/// @nodoc
class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $FirstNameChangedCopyWith<$Res> {
  _$FirstNameChangedCopyWithImpl(
      FirstNameChanged _value, $Res Function(FirstNameChanged) _then)
      : super(_value, (v) => _then(v as FirstNameChanged));

  @override
  FirstNameChanged get _value => super._value as FirstNameChanged;

  @override
  $Res call({
    Object firstNameStr = freezed,
  }) {
    return _then(FirstNameChanged(
      firstNameStr == freezed ? _value.firstNameStr : firstNameStr as String,
    ));
  }
}

/// @nodoc
class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstNameStr) : assert(firstNameStr != null);

  @override
  final String firstNameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.firstNameChanged(firstNameStr: $firstNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirstNameChanged &&
            (identical(other.firstNameStr, firstNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.firstNameStr, firstNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstNameStr);

  @JsonKey(ignore: true)
  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult passwordConfirmChanged(String passwordStr),
    @required TResult roleChanged(String roleValue),
    @required TResult registerButtonPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return firstNameChanged(firstNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult passwordConfirmChanged(String passwordStr),
    TResult roleChanged(String roleValue),
    TResult registerButtonPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordConfirmChanged(PasswordConfirmChanged value),
    @required TResult roleChanged(RoleChanged value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordConfirmChanged(PasswordConfirmChanged value),
    TResult roleChanged(RoleChanged value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements RegisterFormEvent {
  const factory FirstNameChanged(String firstNameStr) = _$FirstNameChanged;

  String get firstNameStr;
  @JsonKey(ignore: true)
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith;
}

/// @nodoc
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastNameStr});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object lastNameStr = freezed,
  }) {
    return _then(LastNameChanged(
      lastNameStr == freezed ? _value.lastNameStr : lastNameStr as String,
    ));
  }
}

/// @nodoc
class _$LastNameChanged implements LastNameChanged {
  const _$LastNameChanged(this.lastNameStr) : assert(lastNameStr != null);

  @override
  final String lastNameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.lastNameChanged(lastNameStr: $lastNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastNameChanged &&
            (identical(other.lastNameStr, lastNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.lastNameStr, lastNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastNameStr);

  @JsonKey(ignore: true)
  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult passwordConfirmChanged(String passwordStr),
    @required TResult roleChanged(String roleValue),
    @required TResult registerButtonPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return lastNameChanged(lastNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult passwordConfirmChanged(String passwordStr),
    TResult roleChanged(String roleValue),
    TResult registerButtonPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(lastNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordConfirmChanged(PasswordConfirmChanged value),
    @required TResult roleChanged(RoleChanged value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordConfirmChanged(PasswordConfirmChanged value),
    TResult roleChanged(RoleChanged value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements RegisterFormEvent {
  const factory LastNameChanged(String lastNameStr) = _$LastNameChanged;

  String get lastNameStr;
  @JsonKey(ignore: true)
  $LastNameChangedCopyWith<LastNameChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult passwordConfirmChanged(String passwordStr),
    @required TResult roleChanged(String roleValue),
    @required TResult registerButtonPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult passwordConfirmChanged(String passwordStr),
    TResult roleChanged(String roleValue),
    TResult registerButtonPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordConfirmChanged(PasswordConfirmChanged value),
    @required TResult roleChanged(RoleChanged value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordConfirmChanged(PasswordConfirmChanged value),
    TResult roleChanged(RoleChanged value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult passwordConfirmChanged(String passwordStr),
    @required TResult roleChanged(String roleValue),
    @required TResult registerButtonPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult passwordConfirmChanged(String passwordStr),
    TResult roleChanged(String roleValue),
    TResult registerButtonPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordConfirmChanged(PasswordConfirmChanged value),
    @required TResult roleChanged(RoleChanged value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordConfirmChanged(PasswordConfirmChanged value),
    TResult roleChanged(RoleChanged value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordConfirmChangedCopyWith<$Res> {
  factory $PasswordConfirmChangedCopyWith(PasswordConfirmChanged value,
          $Res Function(PasswordConfirmChanged) then) =
      _$PasswordConfirmChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordConfirmChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PasswordConfirmChangedCopyWith<$Res> {
  _$PasswordConfirmChangedCopyWithImpl(PasswordConfirmChanged _value,
      $Res Function(PasswordConfirmChanged) _then)
      : super(_value, (v) => _then(v as PasswordConfirmChanged));

  @override
  PasswordConfirmChanged get _value => super._value as PasswordConfirmChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordConfirmChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$PasswordConfirmChanged implements PasswordConfirmChanged {
  const _$PasswordConfirmChanged(this.passwordStr)
      : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordConfirmChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordConfirmChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordConfirmChangedCopyWith<PasswordConfirmChanged> get copyWith =>
      _$PasswordConfirmChangedCopyWithImpl<PasswordConfirmChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult passwordConfirmChanged(String passwordStr),
    @required TResult roleChanged(String roleValue),
    @required TResult registerButtonPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return passwordConfirmChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult passwordConfirmChanged(String passwordStr),
    TResult roleChanged(String roleValue),
    TResult registerButtonPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordConfirmChanged != null) {
      return passwordConfirmChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordConfirmChanged(PasswordConfirmChanged value),
    @required TResult roleChanged(RoleChanged value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return passwordConfirmChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordConfirmChanged(PasswordConfirmChanged value),
    TResult roleChanged(RoleChanged value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordConfirmChanged != null) {
      return passwordConfirmChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordConfirmChanged implements RegisterFormEvent {
  const factory PasswordConfirmChanged(String passwordStr) =
      _$PasswordConfirmChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  $PasswordConfirmChangedCopyWith<PasswordConfirmChanged> get copyWith;
}

/// @nodoc
abstract class $RoleChangedCopyWith<$Res> {
  factory $RoleChangedCopyWith(
          RoleChanged value, $Res Function(RoleChanged) then) =
      _$RoleChangedCopyWithImpl<$Res>;
  $Res call({String roleValue});
}

/// @nodoc
class _$RoleChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $RoleChangedCopyWith<$Res> {
  _$RoleChangedCopyWithImpl(
      RoleChanged _value, $Res Function(RoleChanged) _then)
      : super(_value, (v) => _then(v as RoleChanged));

  @override
  RoleChanged get _value => super._value as RoleChanged;

  @override
  $Res call({
    Object roleValue = freezed,
  }) {
    return _then(RoleChanged(
      roleValue == freezed ? _value.roleValue : roleValue as String,
    ));
  }
}

/// @nodoc
class _$RoleChanged implements RoleChanged {
  const _$RoleChanged(this.roleValue) : assert(roleValue != null);

  @override
  final String roleValue;

  @override
  String toString() {
    return 'RegisterFormEvent.roleChanged(roleValue: $roleValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleChanged &&
            (identical(other.roleValue, roleValue) ||
                const DeepCollectionEquality()
                    .equals(other.roleValue, roleValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roleValue);

  @JsonKey(ignore: true)
  @override
  $RoleChangedCopyWith<RoleChanged> get copyWith =>
      _$RoleChangedCopyWithImpl<RoleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult passwordConfirmChanged(String passwordStr),
    @required TResult roleChanged(String roleValue),
    @required TResult registerButtonPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return roleChanged(roleValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult passwordConfirmChanged(String passwordStr),
    TResult roleChanged(String roleValue),
    TResult registerButtonPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleChanged != null) {
      return roleChanged(roleValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordConfirmChanged(PasswordConfirmChanged value),
    @required TResult roleChanged(RoleChanged value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return roleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordConfirmChanged(PasswordConfirmChanged value),
    TResult roleChanged(RoleChanged value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleChanged != null) {
      return roleChanged(this);
    }
    return orElse();
  }
}

abstract class RoleChanged implements RegisterFormEvent {
  const factory RoleChanged(String roleValue) = _$RoleChanged;

  String get roleValue;
  @JsonKey(ignore: true)
  $RoleChangedCopyWith<RoleChanged> get copyWith;
}

/// @nodoc
abstract class $RegisterButtonPressedCopyWith<$Res> {
  factory $RegisterButtonPressedCopyWith(RegisterButtonPressed value,
          $Res Function(RegisterButtonPressed) then) =
      _$RegisterButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterButtonPressedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterButtonPressedCopyWith<$Res> {
  _$RegisterButtonPressedCopyWithImpl(
      RegisterButtonPressed _value, $Res Function(RegisterButtonPressed) _then)
      : super(_value, (v) => _then(v as RegisterButtonPressed));

  @override
  RegisterButtonPressed get _value => super._value as RegisterButtonPressed;
}

/// @nodoc
class _$RegisterButtonPressed implements RegisterButtonPressed {
  const _$RegisterButtonPressed();

  @override
  String toString() {
    return 'RegisterFormEvent.registerButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult firstNameChanged(String firstNameStr),
    @required TResult lastNameChanged(String lastNameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult passwordConfirmChanged(String passwordStr),
    @required TResult roleChanged(String roleValue),
    @required TResult registerButtonPressed(),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return registerButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult firstNameChanged(String firstNameStr),
    TResult lastNameChanged(String lastNameStr),
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult passwordConfirmChanged(String passwordStr),
    TResult roleChanged(String roleValue),
    TResult registerButtonPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerButtonPressed != null) {
      return registerButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordConfirmChanged(PasswordConfirmChanged value),
    @required TResult roleChanged(RoleChanged value),
    @required TResult registerButtonPressed(RegisterButtonPressed value),
  }) {
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(passwordConfirmChanged != null);
    assert(roleChanged != null);
    assert(registerButtonPressed != null);
    return registerButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordConfirmChanged(PasswordConfirmChanged value),
    TResult roleChanged(RoleChanged value),
    TResult registerButtonPressed(RegisterButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerButtonPressed != null) {
      return registerButtonPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterButtonPressed implements RegisterFormEvent {
  const factory RegisterButtonPressed() = _$RegisterButtonPressed;
}

/// @nodoc
class _$RegisterFormStateTearOff {
  const _$RegisterFormStateTearOff();

// ignore: unused_element
  _RegisterFormState call(
      {@required
          Name firstName,
      @required
          Name lastName,
      @required
          EmailAddress email,
      @required
          Password password,
      @required
          Password confirmPassword,
      @required
          Role role,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<RegisterFailure, User>> authFailureOrSuccessOption}) {
    return _RegisterFormState(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      role: role,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterFormState = _$RegisterFormStateTearOff();

/// @nodoc
mixin _$RegisterFormState {
  Name get firstName;
  Name get lastName;
  EmailAddress get email;
  Password get password;
  Password get confirmPassword;
  Role get role;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<RegisterFailure, User>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res>;
  $Res call(
      {Name firstName,
      Name lastName,
      EmailAddress email,
      Password password,
      Password confirmPassword,
      Role role,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<RegisterFailure, User>> authFailureOrSuccessOption});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  final RegisterFormState _value;
  // ignore: unused_field
  final $Res Function(RegisterFormState) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object role = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as Name,
      lastName: lastName == freezed ? _value.lastName : lastName as Name,
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      role: role == freezed ? _value.role : role as Role,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<RegisterFailure, User>>,
    ));
  }
}

/// @nodoc
abstract class _$RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(
          _RegisterFormState value, $Res Function(_RegisterFormState) then) =
      __$RegisterFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name firstName,
      Name lastName,
      EmailAddress email,
      Password password,
      Password confirmPassword,
      Role role,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<RegisterFailure, User>> authFailureOrSuccessOption});
}

/// @nodoc
class __$RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(
      _RegisterFormState _value, $Res Function(_RegisterFormState) _then)
      : super(_value, (v) => _then(v as _RegisterFormState));

  @override
  _RegisterFormState get _value => super._value as _RegisterFormState;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object password = freezed,
    Object confirmPassword = freezed,
    Object role = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_RegisterFormState(
      firstName: firstName == freezed ? _value.firstName : firstName as Name,
      lastName: lastName == freezed ? _value.lastName : lastName as Name,
      email: email == freezed ? _value.email : email as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      role: role == freezed ? _value.role : role as Role,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<RegisterFailure, User>>,
    ));
  }
}

/// @nodoc
class _$_RegisterFormState implements _RegisterFormState {
  const _$_RegisterFormState(
      {@required this.firstName,
      @required this.lastName,
      @required this.email,
      @required this.password,
      @required this.confirmPassword,
      @required this.role,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(firstName != null),
        assert(lastName != null),
        assert(email != null),
        assert(password != null),
        assert(confirmPassword != null),
        assert(role != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final Name firstName;
  @override
  final Name lastName;
  @override
  final EmailAddress email;
  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final Role role;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<RegisterFailure, User>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterFormState(firstName: $firstName, lastName: $lastName, email: $email, password: $password, confirmPassword: $confirmPassword, role: $role, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFormState &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith =>
      __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
      {@required
          Name firstName,
      @required
          Name lastName,
      @required
          EmailAddress email,
      @required
          Password password,
      @required
          Password confirmPassword,
      @required
          Role role,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<RegisterFailure, User>>
              authFailureOrSuccessOption}) = _$_RegisterFormState;

  @override
  Name get firstName;
  @override
  Name get lastName;
  @override
  EmailAddress get email;
  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  Role get role;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<RegisterFailure, User>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith;
}
