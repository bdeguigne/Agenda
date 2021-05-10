// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'roles_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RolesWatcherEventTearOff {
  const _$RolesWatcherEventTearOff();

// ignore: unused_element
  WatchAll watchAll() {
    return const WatchAll();
  }

// ignore: unused_element
  RolesReceived rolesReceived(
      Either<RepositoryFailure, List<Role>> failureOrRoles) {
    return RolesReceived(
      failureOrRoles,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RolesWatcherEvent = _$RolesWatcherEventTearOff();

/// @nodoc
mixin _$RolesWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
    @required
        TResult rolesReceived(
            Either<RepositoryFailure, List<Role>> failureOrRoles),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult rolesReceived(Either<RepositoryFailure, List<Role>> failureOrRoles),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(WatchAll value),
    @required TResult rolesReceived(RolesReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult rolesReceived(RolesReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RolesWatcherEventCopyWith<$Res> {
  factory $RolesWatcherEventCopyWith(
          RolesWatcherEvent value, $Res Function(RolesWatcherEvent) then) =
      _$RolesWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RolesWatcherEventCopyWithImpl<$Res>
    implements $RolesWatcherEventCopyWith<$Res> {
  _$RolesWatcherEventCopyWithImpl(this._value, this._then);

  final RolesWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(RolesWatcherEvent) _then;
}

/// @nodoc
abstract class $WatchAllCopyWith<$Res> {
  factory $WatchAllCopyWith(WatchAll value, $Res Function(WatchAll) then) =
      _$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAllCopyWithImpl<$Res> extends _$RolesWatcherEventCopyWithImpl<$Res>
    implements $WatchAllCopyWith<$Res> {
  _$WatchAllCopyWithImpl(WatchAll _value, $Res Function(WatchAll) _then)
      : super(_value, (v) => _then(v as WatchAll));

  @override
  WatchAll get _value => super._value as WatchAll;
}

/// @nodoc
class _$WatchAll implements WatchAll {
  const _$WatchAll();

  @override
  String toString() {
    return 'RolesWatcherEvent.watchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
    @required
        TResult rolesReceived(
            Either<RepositoryFailure, List<Role>> failureOrRoles),
  }) {
    assert(watchAll != null);
    assert(rolesReceived != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult rolesReceived(Either<RepositoryFailure, List<Role>> failureOrRoles),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(WatchAll value),
    @required TResult rolesReceived(RolesReceived value),
  }) {
    assert(watchAll != null);
    assert(rolesReceived != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult rolesReceived(RolesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class WatchAll implements RolesWatcherEvent {
  const factory WatchAll() = _$WatchAll;
}

/// @nodoc
abstract class $RolesReceivedCopyWith<$Res> {
  factory $RolesReceivedCopyWith(
          RolesReceived value, $Res Function(RolesReceived) then) =
      _$RolesReceivedCopyWithImpl<$Res>;
  $Res call({Either<RepositoryFailure, List<Role>> failureOrRoles});
}

/// @nodoc
class _$RolesReceivedCopyWithImpl<$Res>
    extends _$RolesWatcherEventCopyWithImpl<$Res>
    implements $RolesReceivedCopyWith<$Res> {
  _$RolesReceivedCopyWithImpl(
      RolesReceived _value, $Res Function(RolesReceived) _then)
      : super(_value, (v) => _then(v as RolesReceived));

  @override
  RolesReceived get _value => super._value as RolesReceived;

  @override
  $Res call({
    Object failureOrRoles = freezed,
  }) {
    return _then(RolesReceived(
      failureOrRoles == freezed
          ? _value.failureOrRoles
          : failureOrRoles as Either<RepositoryFailure, List<Role>>,
    ));
  }
}

/// @nodoc
class _$RolesReceived implements RolesReceived {
  const _$RolesReceived(this.failureOrRoles) : assert(failureOrRoles != null);

  @override
  final Either<RepositoryFailure, List<Role>> failureOrRoles;

  @override
  String toString() {
    return 'RolesWatcherEvent.rolesReceived(failureOrRoles: $failureOrRoles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RolesReceived &&
            (identical(other.failureOrRoles, failureOrRoles) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRoles, failureOrRoles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRoles);

  @JsonKey(ignore: true)
  @override
  $RolesReceivedCopyWith<RolesReceived> get copyWith =>
      _$RolesReceivedCopyWithImpl<RolesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
    @required
        TResult rolesReceived(
            Either<RepositoryFailure, List<Role>> failureOrRoles),
  }) {
    assert(watchAll != null);
    assert(rolesReceived != null);
    return rolesReceived(failureOrRoles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult rolesReceived(Either<RepositoryFailure, List<Role>> failureOrRoles),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rolesReceived != null) {
      return rolesReceived(failureOrRoles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(WatchAll value),
    @required TResult rolesReceived(RolesReceived value),
  }) {
    assert(watchAll != null);
    assert(rolesReceived != null);
    return rolesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult rolesReceived(RolesReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (rolesReceived != null) {
      return rolesReceived(this);
    }
    return orElse();
  }
}

abstract class RolesReceived implements RolesWatcherEvent {
  const factory RolesReceived(
      Either<RepositoryFailure, List<Role>> failureOrRoles) = _$RolesReceived;

  Either<RepositoryFailure, List<Role>> get failureOrRoles;
  @JsonKey(ignore: true)
  $RolesReceivedCopyWith<RolesReceived> get copyWith;
}

/// @nodoc
class _$RolesWatcherStateTearOff {
  const _$RolesWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(List<Role> roles) {
    return LoadSuccess(
      roles,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(RepositoryFailure failure) {
    return LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RolesWatcherState = _$RolesWatcherStateTearOff();

/// @nodoc
mixin _$RolesWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(List<Role> roles),
    @required TResult loadFailure(RepositoryFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(List<Role> roles),
    TResult loadFailure(RepositoryFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RolesWatcherStateCopyWith<$Res> {
  factory $RolesWatcherStateCopyWith(
          RolesWatcherState value, $Res Function(RolesWatcherState) then) =
      _$RolesWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RolesWatcherStateCopyWithImpl<$Res>
    implements $RolesWatcherStateCopyWith<$Res> {
  _$RolesWatcherStateCopyWithImpl(this._value, this._then);

  final RolesWatcherState _value;
  // ignore: unused_field
  final $Res Function(RolesWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RolesWatcherStateCopyWithImpl<$Res>
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
    return 'RolesWatcherState.initial()';
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
    @required TResult loadSuccess(List<Role> roles),
    @required TResult loadFailure(RepositoryFailure failure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(List<Role> roles),
    TResult loadFailure(RepositoryFailure failure),
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
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RolesWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Role> roles});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$RolesWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object roles = freezed,
  }) {
    return _then(LoadSuccess(
      roles == freezed ? _value.roles : roles as List<Role>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.roles) : assert(roles != null);

  @override
  final List<Role> roles;

  @override
  String toString() {
    return 'RolesWatcherState.loadSuccess(roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roles);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(List<Role> roles),
    @required TResult loadFailure(RepositoryFailure failure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(roles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(List<Role> roles),
    TResult loadFailure(RepositoryFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(roles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements RolesWatcherState {
  const factory LoadSuccess(List<Role> roles) = _$LoadSuccess;

  List<Role> get roles;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({RepositoryFailure failure});

  $RepositoryFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$RolesWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(LoadFailure(
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
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failure) : assert(failure != null);

  @override
  final RepositoryFailure failure;

  @override
  String toString() {
    return 'RolesWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(List<Role> roles),
    @required TResult loadFailure(RepositoryFailure failure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(List<Role> roles),
    TResult loadFailure(RepositoryFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadSuccess(LoadSuccess value),
    @required TResult loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadSuccess(LoadSuccess value),
    TResult loadFailure(LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements RolesWatcherState {
  const factory LoadFailure(RepositoryFailure failure) = _$LoadFailure;

  RepositoryFailure get failure;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
