// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DetailsEventTearOff {
  const _$DetailsEventTearOff();

// ignore: unused_element
  _UsersReceived userReceived(int userIndex) {
    return _UsersReceived(
      userIndex,
    );
  }

// ignore: unused_element
  _RolesReceived roleReceived(Roles role) {
    return _RolesReceived(
      role,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DetailsEvent = _$DetailsEventTearOff();

/// @nodoc
mixin _$DetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userReceived(int userIndex),
    @required TResult roleReceived(Roles role),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userReceived(int userIndex),
    TResult roleReceived(Roles role),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userReceived(_UsersReceived value),
    @required TResult roleReceived(_RolesReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userReceived(_UsersReceived value),
    TResult roleReceived(_RolesReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<$Res> implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  final DetailsEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsEvent) _then;
}

/// @nodoc
abstract class _$UsersReceivedCopyWith<$Res> {
  factory _$UsersReceivedCopyWith(
          _UsersReceived value, $Res Function(_UsersReceived) then) =
      __$UsersReceivedCopyWithImpl<$Res>;
  $Res call({int userIndex});
}

/// @nodoc
class __$UsersReceivedCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res>
    implements _$UsersReceivedCopyWith<$Res> {
  __$UsersReceivedCopyWithImpl(
      _UsersReceived _value, $Res Function(_UsersReceived) _then)
      : super(_value, (v) => _then(v as _UsersReceived));

  @override
  _UsersReceived get _value => super._value as _UsersReceived;

  @override
  $Res call({
    Object userIndex = freezed,
  }) {
    return _then(_UsersReceived(
      userIndex == freezed ? _value.userIndex : userIndex as int,
    ));
  }
}

/// @nodoc
class _$_UsersReceived implements _UsersReceived {
  const _$_UsersReceived(this.userIndex) : assert(userIndex != null);

  @override
  final int userIndex;

  @override
  String toString() {
    return 'DetailsEvent.userReceived(userIndex: $userIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersReceived &&
            (identical(other.userIndex, userIndex) ||
                const DeepCollectionEquality()
                    .equals(other.userIndex, userIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userIndex);

  @JsonKey(ignore: true)
  @override
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith =>
      __$UsersReceivedCopyWithImpl<_UsersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userReceived(int userIndex),
    @required TResult roleReceived(Roles role),
  }) {
    assert(userReceived != null);
    assert(roleReceived != null);
    return userReceived(userIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userReceived(int userIndex),
    TResult roleReceived(Roles role),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userReceived != null) {
      return userReceived(userIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userReceived(_UsersReceived value),
    @required TResult roleReceived(_RolesReceived value),
  }) {
    assert(userReceived != null);
    assert(roleReceived != null);
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userReceived(_UsersReceived value),
    TResult roleReceived(_RolesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class _UsersReceived implements DetailsEvent {
  const factory _UsersReceived(int userIndex) = _$_UsersReceived;

  int get userIndex;
  @JsonKey(ignore: true)
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith;
}

/// @nodoc
abstract class _$RolesReceivedCopyWith<$Res> {
  factory _$RolesReceivedCopyWith(
          _RolesReceived value, $Res Function(_RolesReceived) then) =
      __$RolesReceivedCopyWithImpl<$Res>;
  $Res call({Roles role});

  $RolesCopyWith<$Res> get role;
}

/// @nodoc
class __$RolesReceivedCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res>
    implements _$RolesReceivedCopyWith<$Res> {
  __$RolesReceivedCopyWithImpl(
      _RolesReceived _value, $Res Function(_RolesReceived) _then)
      : super(_value, (v) => _then(v as _RolesReceived));

  @override
  _RolesReceived get _value => super._value as _RolesReceived;

  @override
  $Res call({
    Object role = freezed,
  }) {
    return _then(_RolesReceived(
      role == freezed ? _value.role : role as Roles,
    ));
  }

  @override
  $RolesCopyWith<$Res> get role {
    if (_value.role == null) {
      return null;
    }
    return $RolesCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc
class _$_RolesReceived implements _RolesReceived {
  const _$_RolesReceived(this.role) : assert(role != null);

  @override
  final Roles role;

  @override
  String toString() {
    return 'DetailsEvent.roleReceived(role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RolesReceived &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(role);

  @JsonKey(ignore: true)
  @override
  _$RolesReceivedCopyWith<_RolesReceived> get copyWith =>
      __$RolesReceivedCopyWithImpl<_RolesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userReceived(int userIndex),
    @required TResult roleReceived(Roles role),
  }) {
    assert(userReceived != null);
    assert(roleReceived != null);
    return roleReceived(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userReceived(int userIndex),
    TResult roleReceived(Roles role),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleReceived != null) {
      return roleReceived(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userReceived(_UsersReceived value),
    @required TResult roleReceived(_RolesReceived value),
  }) {
    assert(userReceived != null);
    assert(roleReceived != null);
    return roleReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userReceived(_UsersReceived value),
    TResult roleReceived(_RolesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleReceived != null) {
      return roleReceived(this);
    }
    return orElse();
  }
}

abstract class _RolesReceived implements DetailsEvent {
  const factory _RolesReceived(Roles role) = _$_RolesReceived;

  Roles get role;
  @JsonKey(ignore: true)
  _$RolesReceivedCopyWith<_RolesReceived> get copyWith;
}

/// @nodoc
class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UserSelected userSelected(int userIndex) {
    return _UserSelected(
      userIndex,
    );
  }

// ignore: unused_element
  _RolesSelected roleSelected(Roles role) {
    return _RolesSelected(
      role,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DetailsState = _$DetailsStateTearOff();

/// @nodoc
mixin _$DetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userSelected(int userIndex),
    @required TResult roleSelected(Roles role),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userSelected(int userIndex),
    TResult roleSelected(Roles role),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userSelected(_UserSelected value),
    @required TResult roleSelected(_RolesSelected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userSelected(_UserSelected value),
    TResult roleSelected(_RolesSelected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userSelected(int userIndex),
    @required TResult roleSelected(Roles role),
  }) {
    assert(initial != null);
    assert(userSelected != null);
    assert(roleSelected != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userSelected(int userIndex),
    TResult roleSelected(Roles role),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userSelected(_UserSelected value),
    @required TResult roleSelected(_RolesSelected value),
  }) {
    assert(initial != null);
    assert(userSelected != null);
    assert(roleSelected != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userSelected(_UserSelected value),
    TResult roleSelected(_RolesSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DetailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UserSelectedCopyWith<$Res> {
  factory _$UserSelectedCopyWith(
          _UserSelected value, $Res Function(_UserSelected) then) =
      __$UserSelectedCopyWithImpl<$Res>;
  $Res call({int userIndex});
}

/// @nodoc
class __$UserSelectedCopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$UserSelectedCopyWith<$Res> {
  __$UserSelectedCopyWithImpl(
      _UserSelected _value, $Res Function(_UserSelected) _then)
      : super(_value, (v) => _then(v as _UserSelected));

  @override
  _UserSelected get _value => super._value as _UserSelected;

  @override
  $Res call({
    Object userIndex = freezed,
  }) {
    return _then(_UserSelected(
      userIndex == freezed ? _value.userIndex : userIndex as int,
    ));
  }
}

/// @nodoc
class _$_UserSelected implements _UserSelected {
  const _$_UserSelected(this.userIndex) : assert(userIndex != null);

  @override
  final int userIndex;

  @override
  String toString() {
    return 'DetailsState.userSelected(userIndex: $userIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSelected &&
            (identical(other.userIndex, userIndex) ||
                const DeepCollectionEquality()
                    .equals(other.userIndex, userIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userIndex);

  @JsonKey(ignore: true)
  @override
  _$UserSelectedCopyWith<_UserSelected> get copyWith =>
      __$UserSelectedCopyWithImpl<_UserSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userSelected(int userIndex),
    @required TResult roleSelected(Roles role),
  }) {
    assert(initial != null);
    assert(userSelected != null);
    assert(roleSelected != null);
    return userSelected(userIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userSelected(int userIndex),
    TResult roleSelected(Roles role),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSelected != null) {
      return userSelected(userIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userSelected(_UserSelected value),
    @required TResult roleSelected(_RolesSelected value),
  }) {
    assert(initial != null);
    assert(userSelected != null);
    assert(roleSelected != null);
    return userSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userSelected(_UserSelected value),
    TResult roleSelected(_RolesSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSelected != null) {
      return userSelected(this);
    }
    return orElse();
  }
}

abstract class _UserSelected implements DetailsState {
  const factory _UserSelected(int userIndex) = _$_UserSelected;

  int get userIndex;
  @JsonKey(ignore: true)
  _$UserSelectedCopyWith<_UserSelected> get copyWith;
}

/// @nodoc
abstract class _$RolesSelectedCopyWith<$Res> {
  factory _$RolesSelectedCopyWith(
          _RolesSelected value, $Res Function(_RolesSelected) then) =
      __$RolesSelectedCopyWithImpl<$Res>;
  $Res call({Roles role});

  $RolesCopyWith<$Res> get role;
}

/// @nodoc
class __$RolesSelectedCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$RolesSelectedCopyWith<$Res> {
  __$RolesSelectedCopyWithImpl(
      _RolesSelected _value, $Res Function(_RolesSelected) _then)
      : super(_value, (v) => _then(v as _RolesSelected));

  @override
  _RolesSelected get _value => super._value as _RolesSelected;

  @override
  $Res call({
    Object role = freezed,
  }) {
    return _then(_RolesSelected(
      role == freezed ? _value.role : role as Roles,
    ));
  }

  @override
  $RolesCopyWith<$Res> get role {
    if (_value.role == null) {
      return null;
    }
    return $RolesCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc
class _$_RolesSelected implements _RolesSelected {
  const _$_RolesSelected(this.role) : assert(role != null);

  @override
  final Roles role;

  @override
  String toString() {
    return 'DetailsState.roleSelected(role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RolesSelected &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(role);

  @JsonKey(ignore: true)
  @override
  _$RolesSelectedCopyWith<_RolesSelected> get copyWith =>
      __$RolesSelectedCopyWithImpl<_RolesSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userSelected(int userIndex),
    @required TResult roleSelected(Roles role),
  }) {
    assert(initial != null);
    assert(userSelected != null);
    assert(roleSelected != null);
    return roleSelected(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userSelected(int userIndex),
    TResult roleSelected(Roles role),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleSelected != null) {
      return roleSelected(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userSelected(_UserSelected value),
    @required TResult roleSelected(_RolesSelected value),
  }) {
    assert(initial != null);
    assert(userSelected != null);
    assert(roleSelected != null);
    return roleSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userSelected(_UserSelected value),
    TResult roleSelected(_RolesSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleSelected != null) {
      return roleSelected(this);
    }
    return orElse();
  }
}

abstract class _RolesSelected implements DetailsState {
  const factory _RolesSelected(Roles role) = _$_RolesSelected;

  Roles get role;
  @JsonKey(ignore: true)
  _$RolesSelectedCopyWith<_RolesSelected> get copyWith;
}
