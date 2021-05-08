// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'users_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UsersActorEventTearOff {
  const _$UsersActorEventTearOff();

// ignore: unused_element
  _Updated updated(Map<String, dynamic> data, UniqueId userId) {
    return _Updated(
      data,
      userId,
    );
  }

// ignore: unused_element
  _RoleUpdated roleUpdated(User user, Roles role) {
    return _RoleUpdated(
      user,
      role,
    );
  }

// ignore: unused_element
  _NoUserSelected noUserSelected() {
    return const _NoUserSelected();
  }
}

/// @nodoc
// ignore: unused_element
const $UsersActorEvent = _$UsersActorEventTearOff();

/// @nodoc
mixin _$UsersActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(Map<String, dynamic> data, UniqueId userId),
    @required TResult roleUpdated(User user, Roles role),
    @required TResult noUserSelected(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(Map<String, dynamic> data, UniqueId userId),
    TResult roleUpdated(User user, Roles role),
    TResult noUserSelected(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(_Updated value),
    @required TResult roleUpdated(_RoleUpdated value),
    @required TResult noUserSelected(_NoUserSelected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(_Updated value),
    TResult roleUpdated(_RoleUpdated value),
    TResult noUserSelected(_NoUserSelected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UsersActorEventCopyWith<$Res> {
  factory $UsersActorEventCopyWith(
          UsersActorEvent value, $Res Function(UsersActorEvent) then) =
      _$UsersActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersActorEventCopyWithImpl<$Res>
    implements $UsersActorEventCopyWith<$Res> {
  _$UsersActorEventCopyWithImpl(this._value, this._then);

  final UsersActorEvent _value;
  // ignore: unused_field
  final $Res Function(UsersActorEvent) _then;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data, UniqueId userId});
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res> extends _$UsersActorEventCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;

  @override
  $Res call({
    Object data = freezed,
    Object userId = freezed,
  }) {
    return _then(_Updated(
      data == freezed ? _value.data : data as Map<String, dynamic>,
      userId == freezed ? _value.userId : userId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Updated implements _Updated {
  const _$_Updated(this.data, this.userId)
      : assert(data != null),
        assert(userId != null);

  @override
  final Map<String, dynamic> data;
  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'UsersActorEvent.updated(data: $data, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Updated &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$UpdatedCopyWith<_Updated> get copyWith =>
      __$UpdatedCopyWithImpl<_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(Map<String, dynamic> data, UniqueId userId),
    @required TResult roleUpdated(User user, Roles role),
    @required TResult noUserSelected(),
  }) {
    assert(updated != null);
    assert(roleUpdated != null);
    assert(noUserSelected != null);
    return updated(data, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(Map<String, dynamic> data, UniqueId userId),
    TResult roleUpdated(User user, Roles role),
    TResult noUserSelected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(data, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(_Updated value),
    @required TResult roleUpdated(_RoleUpdated value),
    @required TResult noUserSelected(_NoUserSelected value),
  }) {
    assert(updated != null);
    assert(roleUpdated != null);
    assert(noUserSelected != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(_Updated value),
    TResult roleUpdated(_RoleUpdated value),
    TResult noUserSelected(_NoUserSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements UsersActorEvent {
  const factory _Updated(Map<String, dynamic> data, UniqueId userId) =
      _$_Updated;

  Map<String, dynamic> get data;
  UniqueId get userId;
  @JsonKey(ignore: true)
  _$UpdatedCopyWith<_Updated> get copyWith;
}

/// @nodoc
abstract class _$RoleUpdatedCopyWith<$Res> {
  factory _$RoleUpdatedCopyWith(
          _RoleUpdated value, $Res Function(_RoleUpdated) then) =
      __$RoleUpdatedCopyWithImpl<$Res>;
  $Res call({User user, Roles role});

  $UserCopyWith<$Res> get user;
  $RolesCopyWith<$Res> get role;
}

/// @nodoc
class __$RoleUpdatedCopyWithImpl<$Res>
    extends _$UsersActorEventCopyWithImpl<$Res>
    implements _$RoleUpdatedCopyWith<$Res> {
  __$RoleUpdatedCopyWithImpl(
      _RoleUpdated _value, $Res Function(_RoleUpdated) _then)
      : super(_value, (v) => _then(v as _RoleUpdated));

  @override
  _RoleUpdated get _value => super._value as _RoleUpdated;

  @override
  $Res call({
    Object user = freezed,
    Object role = freezed,
  }) {
    return _then(_RoleUpdated(
      user == freezed ? _value.user : user as User,
      role == freezed ? _value.role : role as Roles,
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
class _$_RoleUpdated implements _RoleUpdated {
  const _$_RoleUpdated(this.user, this.role)
      : assert(user != null),
        assert(role != null);

  @override
  final User user;
  @override
  final Roles role;

  @override
  String toString() {
    return 'UsersActorEvent.roleUpdated(user: $user, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoleUpdated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(role);

  @JsonKey(ignore: true)
  @override
  _$RoleUpdatedCopyWith<_RoleUpdated> get copyWith =>
      __$RoleUpdatedCopyWithImpl<_RoleUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(Map<String, dynamic> data, UniqueId userId),
    @required TResult roleUpdated(User user, Roles role),
    @required TResult noUserSelected(),
  }) {
    assert(updated != null);
    assert(roleUpdated != null);
    assert(noUserSelected != null);
    return roleUpdated(user, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(Map<String, dynamic> data, UniqueId userId),
    TResult roleUpdated(User user, Roles role),
    TResult noUserSelected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleUpdated != null) {
      return roleUpdated(user, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(_Updated value),
    @required TResult roleUpdated(_RoleUpdated value),
    @required TResult noUserSelected(_NoUserSelected value),
  }) {
    assert(updated != null);
    assert(roleUpdated != null);
    assert(noUserSelected != null);
    return roleUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(_Updated value),
    TResult roleUpdated(_RoleUpdated value),
    TResult noUserSelected(_NoUserSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleUpdated != null) {
      return roleUpdated(this);
    }
    return orElse();
  }
}

abstract class _RoleUpdated implements UsersActorEvent {
  const factory _RoleUpdated(User user, Roles role) = _$_RoleUpdated;

  User get user;
  Roles get role;
  @JsonKey(ignore: true)
  _$RoleUpdatedCopyWith<_RoleUpdated> get copyWith;
}

/// @nodoc
abstract class _$NoUserSelectedCopyWith<$Res> {
  factory _$NoUserSelectedCopyWith(
          _NoUserSelected value, $Res Function(_NoUserSelected) then) =
      __$NoUserSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoUserSelectedCopyWithImpl<$Res>
    extends _$UsersActorEventCopyWithImpl<$Res>
    implements _$NoUserSelectedCopyWith<$Res> {
  __$NoUserSelectedCopyWithImpl(
      _NoUserSelected _value, $Res Function(_NoUserSelected) _then)
      : super(_value, (v) => _then(v as _NoUserSelected));

  @override
  _NoUserSelected get _value => super._value as _NoUserSelected;
}

/// @nodoc
class _$_NoUserSelected implements _NoUserSelected {
  const _$_NoUserSelected();

  @override
  String toString() {
    return 'UsersActorEvent.noUserSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoUserSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(Map<String, dynamic> data, UniqueId userId),
    @required TResult roleUpdated(User user, Roles role),
    @required TResult noUserSelected(),
  }) {
    assert(updated != null);
    assert(roleUpdated != null);
    assert(noUserSelected != null);
    return noUserSelected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(Map<String, dynamic> data, UniqueId userId),
    TResult roleUpdated(User user, Roles role),
    TResult noUserSelected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noUserSelected != null) {
      return noUserSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(_Updated value),
    @required TResult roleUpdated(_RoleUpdated value),
    @required TResult noUserSelected(_NoUserSelected value),
  }) {
    assert(updated != null);
    assert(roleUpdated != null);
    assert(noUserSelected != null);
    return noUserSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(_Updated value),
    TResult roleUpdated(_RoleUpdated value),
    TResult noUserSelected(_NoUserSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noUserSelected != null) {
      return noUserSelected(this);
    }
    return orElse();
  }
}

abstract class _NoUserSelected implements UsersActorEvent {
  const factory _NoUserSelected() = _$_NoUserSelected;
}

/// @nodoc
class _$UsersActorStateTearOff {
  const _$UsersActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _NoUser noUser() {
    return const _NoUser();
  }

// ignore: unused_element
  _UpdateFailure updateFailure(RepositoryFailure failure) {
    return _UpdateFailure(
      failure,
    );
  }

// ignore: unused_element
  UpdateSuccess updateSuccess() {
    return const UpdateSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $UsersActorState = _$UsersActorStateTearOff();

/// @nodoc
mixin _$UsersActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult noUser(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noUser(),
    TResult updateFailure(RepositoryFailure failure),
    TResult updateSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult noUser(_NoUser value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(UpdateSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noUser(_NoUser value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(UpdateSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UsersActorStateCopyWith<$Res> {
  factory $UsersActorStateCopyWith(
          UsersActorState value, $Res Function(UsersActorState) then) =
      _$UsersActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersActorStateCopyWithImpl<$Res>
    implements $UsersActorStateCopyWith<$Res> {
  _$UsersActorStateCopyWithImpl(this._value, this._then);

  final UsersActorState _value;
  // ignore: unused_field
  final $Res Function(UsersActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UsersActorStateCopyWithImpl<$Res>
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
    return 'UsersActorState.initial()';
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
    @required TResult actionInProgress(),
    @required TResult noUser(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noUser(),
    TResult updateFailure(RepositoryFailure failure),
    TResult updateSuccess(),
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
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult noUser(_NoUser value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noUser(_NoUser value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UsersActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$UsersActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'UsersActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult noUser(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noUser(),
    TResult updateFailure(RepositoryFailure failure),
    TResult updateSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult noUser(_NoUser value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noUser(_NoUser value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements UsersActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$NoUserCopyWith<$Res> {
  factory _$NoUserCopyWith(_NoUser value, $Res Function(_NoUser) then) =
      __$NoUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoUserCopyWithImpl<$Res> extends _$UsersActorStateCopyWithImpl<$Res>
    implements _$NoUserCopyWith<$Res> {
  __$NoUserCopyWithImpl(_NoUser _value, $Res Function(_NoUser) _then)
      : super(_value, (v) => _then(v as _NoUser));

  @override
  _NoUser get _value => super._value as _NoUser;
}

/// @nodoc
class _$_NoUser implements _NoUser {
  const _$_NoUser();

  @override
  String toString() {
    return 'UsersActorState.noUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult noUser(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return noUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noUser(),
    TResult updateFailure(RepositoryFailure failure),
    TResult updateSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noUser != null) {
      return noUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult noUser(_NoUser value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return noUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noUser(_NoUser value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noUser != null) {
      return noUser(this);
    }
    return orElse();
  }
}

abstract class _NoUser implements UsersActorState {
  const factory _NoUser() = _$_NoUser;
}

/// @nodoc
abstract class _$UpdateFailureCopyWith<$Res> {
  factory _$UpdateFailureCopyWith(
          _UpdateFailure value, $Res Function(_UpdateFailure) then) =
      __$UpdateFailureCopyWithImpl<$Res>;
  $Res call({RepositoryFailure failure});

  $RepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$UpdateFailureCopyWithImpl<$Res>
    extends _$UsersActorStateCopyWithImpl<$Res>
    implements _$UpdateFailureCopyWith<$Res> {
  __$UpdateFailureCopyWithImpl(
      _UpdateFailure _value, $Res Function(_UpdateFailure) _then)
      : super(_value, (v) => _then(v as _UpdateFailure));

  @override
  _UpdateFailure get _value => super._value as _UpdateFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_UpdateFailure(
      failure == freezed ? _value.failure : failure as RepositoryFailure,
    ));
  }

  @override
  $RepositoryFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $RepositoryFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure(this.failure) : assert(failure != null);

  @override
  final RepositoryFailure failure;

  @override
  String toString() {
    return 'UsersActorState.updateFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      __$UpdateFailureCopyWithImpl<_UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult noUser(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return updateFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noUser(),
    TResult updateFailure(RepositoryFailure failure),
    TResult updateSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult noUser(_NoUser value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noUser(_NoUser value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements UsersActorState {
  const factory _UpdateFailure(RepositoryFailure failure) = _$_UpdateFailure;

  RepositoryFailure get failure;
  @JsonKey(ignore: true)
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith;
}

/// @nodoc
abstract class $UpdateSuccessCopyWith<$Res> {
  factory $UpdateSuccessCopyWith(
          UpdateSuccess value, $Res Function(UpdateSuccess) then) =
      _$UpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSuccessCopyWithImpl<$Res>
    extends _$UsersActorStateCopyWithImpl<$Res>
    implements $UpdateSuccessCopyWith<$Res> {
  _$UpdateSuccessCopyWithImpl(
      UpdateSuccess _value, $Res Function(UpdateSuccess) _then)
      : super(_value, (v) => _then(v as UpdateSuccess));

  @override
  UpdateSuccess get _value => super._value as UpdateSuccess;
}

/// @nodoc
class _$UpdateSuccess implements UpdateSuccess {
  const _$UpdateSuccess();

  @override
  String toString() {
    return 'UsersActorState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult noUser(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noUser(),
    TResult updateFailure(RepositoryFailure failure),
    TResult updateSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult noUser(_NoUser value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noUser != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noUser(_NoUser value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdateSuccess implements UsersActorState {
  const factory UpdateSuccess() = _$UpdateSuccess;
}
