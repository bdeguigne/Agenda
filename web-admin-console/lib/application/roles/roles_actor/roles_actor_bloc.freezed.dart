// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'roles_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RolesActorEventTearOff {
  const _$RolesActorEventTearOff();

// ignore: unused_element
  _RoleUpdated roleUpdated(Role role) {
    return _RoleUpdated(
      role,
    );
  }

// ignore: unused_element
  _NoRoleSelected noRoleSelected() {
    return const _NoRoleSelected();
  }
}

/// @nodoc
// ignore: unused_element
const $RolesActorEvent = _$RolesActorEventTearOff();

/// @nodoc
mixin _$RolesActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult roleUpdated(Role role),
    @required TResult noRoleSelected(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roleUpdated(Role role),
    TResult noRoleSelected(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roleUpdated(_RoleUpdated value),
    @required TResult noRoleSelected(_NoRoleSelected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roleUpdated(_RoleUpdated value),
    TResult noRoleSelected(_NoRoleSelected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RolesActorEventCopyWith<$Res> {
  factory $RolesActorEventCopyWith(
          RolesActorEvent value, $Res Function(RolesActorEvent) then) =
      _$RolesActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RolesActorEventCopyWithImpl<$Res>
    implements $RolesActorEventCopyWith<$Res> {
  _$RolesActorEventCopyWithImpl(this._value, this._then);

  final RolesActorEvent _value;
  // ignore: unused_field
  final $Res Function(RolesActorEvent) _then;
}

/// @nodoc
abstract class _$RoleUpdatedCopyWith<$Res> {
  factory _$RoleUpdatedCopyWith(
          _RoleUpdated value, $Res Function(_RoleUpdated) then) =
      __$RoleUpdatedCopyWithImpl<$Res>;
  $Res call({Role role});

  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class __$RoleUpdatedCopyWithImpl<$Res>
    extends _$RolesActorEventCopyWithImpl<$Res>
    implements _$RoleUpdatedCopyWith<$Res> {
  __$RoleUpdatedCopyWithImpl(
      _RoleUpdated _value, $Res Function(_RoleUpdated) _then)
      : super(_value, (v) => _then(v as _RoleUpdated));

  @override
  _RoleUpdated get _value => super._value as _RoleUpdated;

  @override
  $Res call({
    Object role = freezed,
  }) {
    return _then(_RoleUpdated(
      role == freezed ? _value.role : role as Role,
    ));
  }

  @override
  $RoleCopyWith<$Res> get role {
    if (_value.role == null) {
      return null;
    }
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc
class _$_RoleUpdated implements _RoleUpdated {
  const _$_RoleUpdated(this.role) : assert(role != null);

  @override
  final Role role;

  @override
  String toString() {
    return 'RolesActorEvent.roleUpdated(role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoleUpdated &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(role);

  @JsonKey(ignore: true)
  @override
  _$RoleUpdatedCopyWith<_RoleUpdated> get copyWith =>
      __$RoleUpdatedCopyWithImpl<_RoleUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult roleUpdated(Role role),
    @required TResult noRoleSelected(),
  }) {
    assert(roleUpdated != null);
    assert(noRoleSelected != null);
    return roleUpdated(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roleUpdated(Role role),
    TResult noRoleSelected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleUpdated != null) {
      return roleUpdated(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roleUpdated(_RoleUpdated value),
    @required TResult noRoleSelected(_NoRoleSelected value),
  }) {
    assert(roleUpdated != null);
    assert(noRoleSelected != null);
    return roleUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roleUpdated(_RoleUpdated value),
    TResult noRoleSelected(_NoRoleSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roleUpdated != null) {
      return roleUpdated(this);
    }
    return orElse();
  }
}

abstract class _RoleUpdated implements RolesActorEvent {
  const factory _RoleUpdated(Role role) = _$_RoleUpdated;

  Role get role;
  @JsonKey(ignore: true)
  _$RoleUpdatedCopyWith<_RoleUpdated> get copyWith;
}

/// @nodoc
abstract class _$NoRoleSelectedCopyWith<$Res> {
  factory _$NoRoleSelectedCopyWith(
          _NoRoleSelected value, $Res Function(_NoRoleSelected) then) =
      __$NoRoleSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoRoleSelectedCopyWithImpl<$Res>
    extends _$RolesActorEventCopyWithImpl<$Res>
    implements _$NoRoleSelectedCopyWith<$Res> {
  __$NoRoleSelectedCopyWithImpl(
      _NoRoleSelected _value, $Res Function(_NoRoleSelected) _then)
      : super(_value, (v) => _then(v as _NoRoleSelected));

  @override
  _NoRoleSelected get _value => super._value as _NoRoleSelected;
}

/// @nodoc
class _$_NoRoleSelected implements _NoRoleSelected {
  const _$_NoRoleSelected();

  @override
  String toString() {
    return 'RolesActorEvent.noRoleSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoRoleSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult roleUpdated(Role role),
    @required TResult noRoleSelected(),
  }) {
    assert(roleUpdated != null);
    assert(noRoleSelected != null);
    return noRoleSelected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roleUpdated(Role role),
    TResult noRoleSelected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noRoleSelected != null) {
      return noRoleSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roleUpdated(_RoleUpdated value),
    @required TResult noRoleSelected(_NoRoleSelected value),
  }) {
    assert(roleUpdated != null);
    assert(noRoleSelected != null);
    return noRoleSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roleUpdated(_RoleUpdated value),
    TResult noRoleSelected(_NoRoleSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noRoleSelected != null) {
      return noRoleSelected(this);
    }
    return orElse();
  }
}

abstract class _NoRoleSelected implements RolesActorEvent {
  const factory _NoRoleSelected() = _$_NoRoleSelected;
}

/// @nodoc
class _$RolesActorStateTearOff {
  const _$RolesActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _NoRole noRoleSelected() {
    return const _NoRole();
  }

// ignore: unused_element
  _UpdateFailure updateFailure(RepositoryFailure failure) {
    return _UpdateFailure(
      failure,
    );
  }

// ignore: unused_element
  _UpdateSuccess updateSuccess() {
    return const _UpdateSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $RolesActorState = _$RolesActorStateTearOff();

/// @nodoc
mixin _$RolesActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult noRoleSelected(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noRoleSelected(),
    TResult updateFailure(RepositoryFailure failure),
    TResult updateSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult noRoleSelected(_NoRole value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(_UpdateSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noRoleSelected(_NoRole value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(_UpdateSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RolesActorStateCopyWith<$Res> {
  factory $RolesActorStateCopyWith(
          RolesActorState value, $Res Function(RolesActorState) then) =
      _$RolesActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RolesActorStateCopyWithImpl<$Res>
    implements $RolesActorStateCopyWith<$Res> {
  _$RolesActorStateCopyWithImpl(this._value, this._then);

  final RolesActorState _value;
  // ignore: unused_field
  final $Res Function(RolesActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RolesActorStateCopyWithImpl<$Res>
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
    return 'RolesActorState.initial()';
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
    @required TResult noRoleSelected(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noRoleSelected(),
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
    @required TResult noRoleSelected(_NoRole value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(_UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noRoleSelected(_NoRole value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(_UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RolesActorState {
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
    extends _$RolesActorStateCopyWithImpl<$Res>
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
    return 'RolesActorState.actionInProgress()';
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
    @required TResult noRoleSelected(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noRoleSelected(),
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
    @required TResult noRoleSelected(_NoRole value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(_UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noRoleSelected(_NoRole value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(_UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements RolesActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$NoRoleCopyWith<$Res> {
  factory _$NoRoleCopyWith(_NoRole value, $Res Function(_NoRole) then) =
      __$NoRoleCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoRoleCopyWithImpl<$Res> extends _$RolesActorStateCopyWithImpl<$Res>
    implements _$NoRoleCopyWith<$Res> {
  __$NoRoleCopyWithImpl(_NoRole _value, $Res Function(_NoRole) _then)
      : super(_value, (v) => _then(v as _NoRole));

  @override
  _NoRole get _value => super._value as _NoRole;
}

/// @nodoc
class _$_NoRole implements _NoRole {
  const _$_NoRole();

  @override
  String toString() {
    return 'RolesActorState.noRoleSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoRole);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult noRoleSelected(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return noRoleSelected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noRoleSelected(),
    TResult updateFailure(RepositoryFailure failure),
    TResult updateSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noRoleSelected != null) {
      return noRoleSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult noRoleSelected(_NoRole value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(_UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return noRoleSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noRoleSelected(_NoRole value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(_UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noRoleSelected != null) {
      return noRoleSelected(this);
    }
    return orElse();
  }
}

abstract class _NoRole implements RolesActorState {
  const factory _NoRole() = _$_NoRole;
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
    extends _$RolesActorStateCopyWithImpl<$Res>
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
    return 'RolesActorState.updateFailure(failure: $failure)';
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
    @required TResult noRoleSelected(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return updateFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noRoleSelected(),
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
    @required TResult noRoleSelected(_NoRole value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(_UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noRoleSelected(_NoRole value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(_UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements RolesActorState {
  const factory _UpdateFailure(RepositoryFailure failure) = _$_UpdateFailure;

  RepositoryFailure get failure;
  @JsonKey(ignore: true)
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith;
}

/// @nodoc
abstract class _$UpdateSuccessCopyWith<$Res> {
  factory _$UpdateSuccessCopyWith(
          _UpdateSuccess value, $Res Function(_UpdateSuccess) then) =
      __$UpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateSuccessCopyWithImpl<$Res>
    extends _$RolesActorStateCopyWithImpl<$Res>
    implements _$UpdateSuccessCopyWith<$Res> {
  __$UpdateSuccessCopyWithImpl(
      _UpdateSuccess _value, $Res Function(_UpdateSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateSuccess));

  @override
  _UpdateSuccess get _value => super._value as _UpdateSuccess;
}

/// @nodoc
class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess();

  @override
  String toString() {
    return 'RolesActorState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult noRoleSelected(),
    @required TResult updateFailure(RepositoryFailure failure),
    @required TResult updateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult noRoleSelected(),
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
    @required TResult noRoleSelected(_NoRole value),
    @required TResult updateFailure(_UpdateFailure value),
    @required TResult updateSuccess(_UpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(noRoleSelected != null);
    assert(updateFailure != null);
    assert(updateSuccess != null);
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult noRoleSelected(_NoRole value),
    TResult updateFailure(_UpdateFailure value),
    TResult updateSuccess(_UpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements RolesActorState {
  const factory _UpdateSuccess() = _$_UpdateSuccess;
}
