// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'users_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UsersWatcherEventTearOff {
  const _$UsersWatcherEventTearOff();

// ignore: unused_element
  WatchAll watchAll() {
    return const WatchAll();
  }

// ignore: unused_element
  UsersReceived usersReceived(Either<UserFailure, List<User>> failureOrUsers) {
    return UsersReceived(
      failureOrUsers,
    );
  }

// ignore: unused_element
  Test test() {
    return const Test();
  }
}

/// @nodoc
// ignore: unused_element
const $UsersWatcherEvent = _$UsersWatcherEventTearOff();

/// @nodoc
mixin _$UsersWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
    @required
        TResult usersReceived(Either<UserFailure, List<User>> failureOrUsers),
    @required TResult test(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult usersReceived(Either<UserFailure, List<User>> failureOrUsers),
    TResult test(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(WatchAll value),
    @required TResult usersReceived(UsersReceived value),
    @required TResult test(Test value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult usersReceived(UsersReceived value),
    TResult test(Test value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UsersWatcherEventCopyWith<$Res> {
  factory $UsersWatcherEventCopyWith(
          UsersWatcherEvent value, $Res Function(UsersWatcherEvent) then) =
      _$UsersWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersWatcherEventCopyWithImpl<$Res>
    implements $UsersWatcherEventCopyWith<$Res> {
  _$UsersWatcherEventCopyWithImpl(this._value, this._then);

  final UsersWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UsersWatcherEvent) _then;
}

/// @nodoc
abstract class $WatchAllCopyWith<$Res> {
  factory $WatchAllCopyWith(WatchAll value, $Res Function(WatchAll) then) =
      _$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAllCopyWithImpl<$Res> extends _$UsersWatcherEventCopyWithImpl<$Res>
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
    return 'UsersWatcherEvent.watchAll()';
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
        TResult usersReceived(Either<UserFailure, List<User>> failureOrUsers),
    @required TResult test(),
  }) {
    assert(watchAll != null);
    assert(usersReceived != null);
    assert(test != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult usersReceived(Either<UserFailure, List<User>> failureOrUsers),
    TResult test(),
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
    @required TResult usersReceived(UsersReceived value),
    @required TResult test(Test value),
  }) {
    assert(watchAll != null);
    assert(usersReceived != null);
    assert(test != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult usersReceived(UsersReceived value),
    TResult test(Test value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class WatchAll implements UsersWatcherEvent {
  const factory WatchAll() = _$WatchAll;
}

/// @nodoc
abstract class $UsersReceivedCopyWith<$Res> {
  factory $UsersReceivedCopyWith(
          UsersReceived value, $Res Function(UsersReceived) then) =
      _$UsersReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserFailure, List<User>> failureOrUsers});
}

/// @nodoc
class _$UsersReceivedCopyWithImpl<$Res>
    extends _$UsersWatcherEventCopyWithImpl<$Res>
    implements $UsersReceivedCopyWith<$Res> {
  _$UsersReceivedCopyWithImpl(
      UsersReceived _value, $Res Function(UsersReceived) _then)
      : super(_value, (v) => _then(v as UsersReceived));

  @override
  UsersReceived get _value => super._value as UsersReceived;

  @override
  $Res call({
    Object failureOrUsers = freezed,
  }) {
    return _then(UsersReceived(
      failureOrUsers == freezed
          ? _value.failureOrUsers
          : failureOrUsers as Either<UserFailure, List<User>>,
    ));
  }
}

/// @nodoc
class _$UsersReceived implements UsersReceived {
  const _$UsersReceived(this.failureOrUsers) : assert(failureOrUsers != null);

  @override
  final Either<UserFailure, List<User>> failureOrUsers;

  @override
  String toString() {
    return 'UsersWatcherEvent.usersReceived(failureOrUsers: $failureOrUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsersReceived &&
            (identical(other.failureOrUsers, failureOrUsers) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUsers, failureOrUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrUsers);

  @JsonKey(ignore: true)
  @override
  $UsersReceivedCopyWith<UsersReceived> get copyWith =>
      _$UsersReceivedCopyWithImpl<UsersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
    @required
        TResult usersReceived(Either<UserFailure, List<User>> failureOrUsers),
    @required TResult test(),
  }) {
    assert(watchAll != null);
    assert(usersReceived != null);
    assert(test != null);
    return usersReceived(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult usersReceived(Either<UserFailure, List<User>> failureOrUsers),
    TResult test(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usersReceived != null) {
      return usersReceived(failureOrUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(WatchAll value),
    @required TResult usersReceived(UsersReceived value),
    @required TResult test(Test value),
  }) {
    assert(watchAll != null);
    assert(usersReceived != null);
    assert(test != null);
    return usersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult usersReceived(UsersReceived value),
    TResult test(Test value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usersReceived != null) {
      return usersReceived(this);
    }
    return orElse();
  }
}

abstract class UsersReceived implements UsersWatcherEvent {
  const factory UsersReceived(Either<UserFailure, List<User>> failureOrUsers) =
      _$UsersReceived;

  Either<UserFailure, List<User>> get failureOrUsers;
  @JsonKey(ignore: true)
  $UsersReceivedCopyWith<UsersReceived> get copyWith;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestCopyWithImpl<$Res> extends _$UsersWatcherEventCopyWithImpl<$Res>
    implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(Test _value, $Res Function(Test) _then)
      : super(_value, (v) => _then(v as Test));

  @override
  Test get _value => super._value as Test;
}

/// @nodoc
class _$Test implements Test {
  const _$Test();

  @override
  String toString() {
    return 'UsersWatcherEvent.test()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Test);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
    @required
        TResult usersReceived(Either<UserFailure, List<User>> failureOrUsers),
    @required TResult test(),
  }) {
    assert(watchAll != null);
    assert(usersReceived != null);
    assert(test != null);
    return test();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult usersReceived(Either<UserFailure, List<User>> failureOrUsers),
    TResult test(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (test != null) {
      return test();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(WatchAll value),
    @required TResult usersReceived(UsersReceived value),
    @required TResult test(Test value),
  }) {
    assert(watchAll != null);
    assert(usersReceived != null);
    assert(test != null);
    return test(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult usersReceived(UsersReceived value),
    TResult test(Test value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (test != null) {
      return test(this);
    }
    return orElse();
  }
}

abstract class Test implements UsersWatcherEvent {
  const factory Test() = _$Test;
}

/// @nodoc
class _$UsersWatcherStateTearOff {
  const _$UsersWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(List<User> users) {
    return LoadSuccess(
      users,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(UserFailure failure) {
    return LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UsersWatcherState = _$UsersWatcherStateTearOff();

/// @nodoc
mixin _$UsersWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(List<User> users),
    @required TResult loadFailure(UserFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(List<User> users),
    TResult loadFailure(UserFailure failure),
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
abstract class $UsersWatcherStateCopyWith<$Res> {
  factory $UsersWatcherStateCopyWith(
          UsersWatcherState value, $Res Function(UsersWatcherState) then) =
      _$UsersWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersWatcherStateCopyWithImpl<$Res>
    implements $UsersWatcherStateCopyWith<$Res> {
  _$UsersWatcherStateCopyWithImpl(this._value, this._then);

  final UsersWatcherState _value;
  // ignore: unused_field
  final $Res Function(UsersWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UsersWatcherStateCopyWithImpl<$Res>
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
    return 'UsersWatcherState.initial()';
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
    @required TResult loadSuccess(List<User> users),
    @required TResult loadFailure(UserFailure failure),
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
    TResult loadSuccess(List<User> users),
    TResult loadFailure(UserFailure failure),
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

abstract class _Initial implements UsersWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<User> users});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$UsersWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(LoadSuccess(
      users == freezed ? _value.users : users as List<User>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.users) : assert(users != null);

  @override
  final List<User> users;

  @override
  String toString() {
    return 'UsersWatcherState.loadSuccess(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(List<User> users),
    @required TResult loadFailure(UserFailure failure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(List<User> users),
    TResult loadFailure(UserFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(users);
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

abstract class LoadSuccess implements UsersWatcherState {
  const factory LoadSuccess(List<User> users) = _$LoadSuccess;

  List<User> get users;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({UserFailure failure});

  $UserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$UsersWatcherStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $UserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failure) : assert(failure != null);

  @override
  final UserFailure failure;

  @override
  String toString() {
    return 'UsersWatcherState.loadFailure(failure: $failure)';
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
    @required TResult loadSuccess(List<User> users),
    @required TResult loadFailure(UserFailure failure),
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
    TResult loadSuccess(List<User> users),
    TResult loadFailure(UserFailure failure),
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

abstract class LoadFailure implements UsersWatcherState {
  const factory LoadFailure(UserFailure failure) = _$LoadFailure;

  UserFailure get failure;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
