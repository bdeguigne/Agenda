// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDetailsEventTearOff {
  const _$UserDetailsEventTearOff();

// ignore: unused_element
  _UsersReceived userReceived(User user) {
    return _UsersReceived(
      user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserDetailsEvent = _$UserDetailsEventTearOff();

/// @nodoc
mixin _$UserDetailsEvent {
  User get user;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userReceived(User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userReceived(User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userReceived(_UsersReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userReceived(_UsersReceived value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $UserDetailsEventCopyWith<UserDetailsEvent> get copyWith;
}

/// @nodoc
abstract class $UserDetailsEventCopyWith<$Res> {
  factory $UserDetailsEventCopyWith(
          UserDetailsEvent value, $Res Function(UserDetailsEvent) then) =
      _$UserDetailsEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDetailsEventCopyWithImpl<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  _$UserDetailsEventCopyWithImpl(this._value, this._then);

  final UserDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(UserDetailsEvent) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UsersReceivedCopyWith<$Res>
    implements $UserDetailsEventCopyWith<$Res> {
  factory _$UsersReceivedCopyWith(
          _UsersReceived value, $Res Function(_UsersReceived) then) =
      __$UsersReceivedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UsersReceivedCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res>
    implements _$UsersReceivedCopyWith<$Res> {
  __$UsersReceivedCopyWithImpl(
      _UsersReceived _value, $Res Function(_UsersReceived) _then)
      : super(_value, (v) => _then(v as _UsersReceived));

  @override
  _UsersReceived get _value => super._value as _UsersReceived;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_UsersReceived(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$_UsersReceived implements _UsersReceived {
  const _$_UsersReceived(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'UserDetailsEvent.userReceived(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersReceived &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith =>
      __$UsersReceivedCopyWithImpl<_UsersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult userReceived(User user),
  }) {
    assert(userReceived != null);
    return userReceived(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult userReceived(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userReceived != null) {
      return userReceived(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult userReceived(_UsersReceived value),
  }) {
    assert(userReceived != null);
    return userReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult userReceived(_UsersReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userReceived != null) {
      return userReceived(this);
    }
    return orElse();
  }
}

abstract class _UsersReceived implements UserDetailsEvent {
  const factory _UsersReceived(User user) = _$_UsersReceived;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith;
}

/// @nodoc
class _$UserDetailsStateTearOff {
  const _$UserDetailsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UserSelected userSelected(User user) {
    return _UserSelected(
      user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserDetailsState = _$UserDetailsStateTearOff();

/// @nodoc
mixin _$UserDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userSelected(User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userSelected(User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userSelected(_UserSelected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userSelected(_UserSelected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  final UserDetailsState _value;
  // ignore: unused_field
  final $Res Function(UserDetailsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserDetailsStateCopyWithImpl<$Res>
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
    return 'UserDetailsState.initial()';
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
    @required TResult userSelected(User user),
  }) {
    assert(initial != null);
    assert(userSelected != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userSelected(User user),
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
  }) {
    assert(initial != null);
    assert(userSelected != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userSelected(_UserSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserDetailsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UserSelectedCopyWith<$Res> {
  factory _$UserSelectedCopyWith(
          _UserSelected value, $Res Function(_UserSelected) then) =
      __$UserSelectedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserSelectedCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res>
    implements _$UserSelectedCopyWith<$Res> {
  __$UserSelectedCopyWithImpl(
      _UserSelected _value, $Res Function(_UserSelected) _then)
      : super(_value, (v) => _then(v as _UserSelected));

  @override
  _UserSelected get _value => super._value as _UserSelected;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_UserSelected(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_UserSelected implements _UserSelected {
  const _$_UserSelected(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'UserDetailsState.userSelected(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserSelected &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$UserSelectedCopyWith<_UserSelected> get copyWith =>
      __$UserSelectedCopyWithImpl<_UserSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult userSelected(User user),
  }) {
    assert(initial != null);
    assert(userSelected != null);
    return userSelected(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult userSelected(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSelected != null) {
      return userSelected(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult userSelected(_UserSelected value),
  }) {
    assert(initial != null);
    assert(userSelected != null);
    return userSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult userSelected(_UserSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userSelected != null) {
      return userSelected(this);
    }
    return orElse();
  }
}

abstract class _UserSelected implements UserDetailsState {
  const factory _UserSelected(User user) = _$_UserSelected;

  User get user;
  @JsonKey(ignore: true)
  _$UserSelectedCopyWith<_UserSelected> get copyWith;
}
