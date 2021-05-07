// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'collection_right_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CollectionRightWatcherEventTearOff {
  const _$CollectionRightWatcherEventTearOff();

// ignore: unused_element
  WatchAll watchAll() {
    return const WatchAll();
  }

// ignore: unused_element
  CollectionRightReceived collectionRightReceived(
      Either<RepositoryFailure, List<CollectionRight>>
          failureOrCollectionRight) {
    return CollectionRightReceived(
      failureOrCollectionRight,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CollectionRightWatcherEvent = _$CollectionRightWatcherEventTearOff();

/// @nodoc
mixin _$CollectionRightWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
    @required
        TResult collectionRightReceived(
            Either<RepositoryFailure, List<CollectionRight>>
                failureOrCollectionRight),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult collectionRightReceived(
        Either<RepositoryFailure, List<CollectionRight>>
            failureOrCollectionRight),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(WatchAll value),
    @required TResult collectionRightReceived(CollectionRightReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult collectionRightReceived(CollectionRightReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CollectionRightWatcherEventCopyWith<$Res> {
  factory $CollectionRightWatcherEventCopyWith(
          CollectionRightWatcherEvent value,
          $Res Function(CollectionRightWatcherEvent) then) =
      _$CollectionRightWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollectionRightWatcherEventCopyWithImpl<$Res>
    implements $CollectionRightWatcherEventCopyWith<$Res> {
  _$CollectionRightWatcherEventCopyWithImpl(this._value, this._then);

  final CollectionRightWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CollectionRightWatcherEvent) _then;
}

/// @nodoc
abstract class $WatchAllCopyWith<$Res> {
  factory $WatchAllCopyWith(WatchAll value, $Res Function(WatchAll) then) =
      _$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAllCopyWithImpl<$Res>
    extends _$CollectionRightWatcherEventCopyWithImpl<$Res>
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
    return 'CollectionRightWatcherEvent.watchAll()';
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
        TResult collectionRightReceived(
            Either<RepositoryFailure, List<CollectionRight>>
                failureOrCollectionRight),
  }) {
    assert(watchAll != null);
    assert(collectionRightReceived != null);
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult collectionRightReceived(
        Either<RepositoryFailure, List<CollectionRight>>
            failureOrCollectionRight),
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
    @required TResult collectionRightReceived(CollectionRightReceived value),
  }) {
    assert(watchAll != null);
    assert(collectionRightReceived != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult collectionRightReceived(CollectionRightReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class WatchAll implements CollectionRightWatcherEvent {
  const factory WatchAll() = _$WatchAll;
}

/// @nodoc
abstract class $CollectionRightReceivedCopyWith<$Res> {
  factory $CollectionRightReceivedCopyWith(CollectionRightReceived value,
          $Res Function(CollectionRightReceived) then) =
      _$CollectionRightReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<RepositoryFailure, List<CollectionRight>>
          failureOrCollectionRight});
}

/// @nodoc
class _$CollectionRightReceivedCopyWithImpl<$Res>
    extends _$CollectionRightWatcherEventCopyWithImpl<$Res>
    implements $CollectionRightReceivedCopyWith<$Res> {
  _$CollectionRightReceivedCopyWithImpl(CollectionRightReceived _value,
      $Res Function(CollectionRightReceived) _then)
      : super(_value, (v) => _then(v as CollectionRightReceived));

  @override
  CollectionRightReceived get _value => super._value as CollectionRightReceived;

  @override
  $Res call({
    Object failureOrCollectionRight = freezed,
  }) {
    return _then(CollectionRightReceived(
      failureOrCollectionRight == freezed
          ? _value.failureOrCollectionRight
          : failureOrCollectionRight
              as Either<RepositoryFailure, List<CollectionRight>>,
    ));
  }
}

/// @nodoc
class _$CollectionRightReceived implements CollectionRightReceived {
  const _$CollectionRightReceived(this.failureOrCollectionRight)
      : assert(failureOrCollectionRight != null);

  @override
  final Either<RepositoryFailure, List<CollectionRight>>
      failureOrCollectionRight;

  @override
  String toString() {
    return 'CollectionRightWatcherEvent.collectionRightReceived(failureOrCollectionRight: $failureOrCollectionRight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CollectionRightReceived &&
            (identical(
                    other.failureOrCollectionRight, failureOrCollectionRight) ||
                const DeepCollectionEquality().equals(
                    other.failureOrCollectionRight, failureOrCollectionRight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCollectionRight);

  @JsonKey(ignore: true)
  @override
  $CollectionRightReceivedCopyWith<CollectionRightReceived> get copyWith =>
      _$CollectionRightReceivedCopyWithImpl<CollectionRightReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAll(),
    @required
        TResult collectionRightReceived(
            Either<RepositoryFailure, List<CollectionRight>>
                failureOrCollectionRight),
  }) {
    assert(watchAll != null);
    assert(collectionRightReceived != null);
    return collectionRightReceived(failureOrCollectionRight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAll(),
    TResult collectionRightReceived(
        Either<RepositoryFailure, List<CollectionRight>>
            failureOrCollectionRight),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (collectionRightReceived != null) {
      return collectionRightReceived(failureOrCollectionRight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAll(WatchAll value),
    @required TResult collectionRightReceived(CollectionRightReceived value),
  }) {
    assert(watchAll != null);
    assert(collectionRightReceived != null);
    return collectionRightReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAll(WatchAll value),
    TResult collectionRightReceived(CollectionRightReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (collectionRightReceived != null) {
      return collectionRightReceived(this);
    }
    return orElse();
  }
}

abstract class CollectionRightReceived implements CollectionRightWatcherEvent {
  const factory CollectionRightReceived(
      Either<RepositoryFailure, List<CollectionRight>>
          failureOrCollectionRight) = _$CollectionRightReceived;

  Either<RepositoryFailure, List<CollectionRight>> get failureOrCollectionRight;
  @JsonKey(ignore: true)
  $CollectionRightReceivedCopyWith<CollectionRightReceived> get copyWith;
}

/// @nodoc
class _$CollectionRightWatcherStateTearOff {
  const _$CollectionRightWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(List<CollectionRight> collectionRights) {
    return LoadSuccess(
      collectionRights,
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
const $CollectionRightWatcherState = _$CollectionRightWatcherStateTearOff();

/// @nodoc
mixin _$CollectionRightWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(List<CollectionRight> collectionRights),
    @required TResult loadFailure(RepositoryFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(List<CollectionRight> collectionRights),
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
abstract class $CollectionRightWatcherStateCopyWith<$Res> {
  factory $CollectionRightWatcherStateCopyWith(
          CollectionRightWatcherState value,
          $Res Function(CollectionRightWatcherState) then) =
      _$CollectionRightWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollectionRightWatcherStateCopyWithImpl<$Res>
    implements $CollectionRightWatcherStateCopyWith<$Res> {
  _$CollectionRightWatcherStateCopyWithImpl(this._value, this._then);

  final CollectionRightWatcherState _value;
  // ignore: unused_field
  final $Res Function(CollectionRightWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CollectionRightWatcherStateCopyWithImpl<$Res>
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
    return 'CollectionRightWatcherState.initial()';
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
    @required TResult loadSuccess(List<CollectionRight> collectionRights),
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
    TResult loadSuccess(List<CollectionRight> collectionRights),
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

abstract class _Initial implements CollectionRightWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<CollectionRight> collectionRights});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$CollectionRightWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object collectionRights = freezed,
  }) {
    return _then(LoadSuccess(
      collectionRights == freezed
          ? _value.collectionRights
          : collectionRights as List<CollectionRight>,
    ));
  }
}

/// @nodoc
class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.collectionRights) : assert(collectionRights != null);

  @override
  final List<CollectionRight> collectionRights;

  @override
  String toString() {
    return 'CollectionRightWatcherState.loadSuccess(collectionRights: $collectionRights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.collectionRights, collectionRights) ||
                const DeepCollectionEquality()
                    .equals(other.collectionRights, collectionRights)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(collectionRights);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadSuccess(List<CollectionRight> collectionRights),
    @required TResult loadFailure(RepositoryFailure failure),
  }) {
    assert(initial != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(collectionRights);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadSuccess(List<CollectionRight> collectionRights),
    TResult loadFailure(RepositoryFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(collectionRights);
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

abstract class LoadSuccess implements CollectionRightWatcherState {
  const factory LoadSuccess(List<CollectionRight> collectionRights) =
      _$LoadSuccess;

  List<CollectionRight> get collectionRights;
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
    extends _$CollectionRightWatcherStateCopyWithImpl<$Res>
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
    return 'CollectionRightWatcherState.loadFailure(failure: $failure)';
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
    @required TResult loadSuccess(List<CollectionRight> collectionRights),
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
    TResult loadSuccess(List<CollectionRight> collectionRights),
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

abstract class LoadFailure implements CollectionRightWatcherState {
  const factory LoadFailure(RepositoryFailure failure) = _$LoadFailure;

  RepositoryFailure get failure;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
