// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc_test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BlocTestEventTearOff {
  const _$BlocTestEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }
}

/// @nodoc
// ignore: unused_element
const $BlocTestEvent = _$BlocTestEventTearOff();

/// @nodoc
mixin _$BlocTestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BlocTestEventCopyWith<$Res> {
  factory $BlocTestEventCopyWith(
          BlocTestEvent value, $Res Function(BlocTestEvent) then) =
      _$BlocTestEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlocTestEventCopyWithImpl<$Res>
    implements $BlocTestEventCopyWith<$Res> {
  _$BlocTestEventCopyWithImpl(this._value, this._then);

  final BlocTestEvent _value;
  // ignore: unused_field
  final $Res Function(BlocTestEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$BlocTestEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'BlocTestEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
  }) {
    assert(started != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  }) {
    assert(started != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BlocTestEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$BlocTestStateTearOff {
  const _$BlocTestStateTearOff();

// ignore: unused_element
  _BlocTestState call({@required Option<EmailAddress> emailTest}) {
    return _BlocTestState(
      emailTest: emailTest,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BlocTestState = _$BlocTestStateTearOff();

/// @nodoc
mixin _$BlocTestState {
  Option<EmailAddress> get emailTest;

  @JsonKey(ignore: true)
  $BlocTestStateCopyWith<BlocTestState> get copyWith;
}

/// @nodoc
abstract class $BlocTestStateCopyWith<$Res> {
  factory $BlocTestStateCopyWith(
          BlocTestState value, $Res Function(BlocTestState) then) =
      _$BlocTestStateCopyWithImpl<$Res>;
  $Res call({Option<EmailAddress> emailTest});
}

/// @nodoc
class _$BlocTestStateCopyWithImpl<$Res>
    implements $BlocTestStateCopyWith<$Res> {
  _$BlocTestStateCopyWithImpl(this._value, this._then);

  final BlocTestState _value;
  // ignore: unused_field
  final $Res Function(BlocTestState) _then;

  @override
  $Res call({
    Object emailTest = freezed,
  }) {
    return _then(_value.copyWith(
      emailTest: emailTest == freezed
          ? _value.emailTest
          : emailTest as Option<EmailAddress>,
    ));
  }
}

/// @nodoc
abstract class _$BlocTestStateCopyWith<$Res>
    implements $BlocTestStateCopyWith<$Res> {
  factory _$BlocTestStateCopyWith(
          _BlocTestState value, $Res Function(_BlocTestState) then) =
      __$BlocTestStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<EmailAddress> emailTest});
}

/// @nodoc
class __$BlocTestStateCopyWithImpl<$Res>
    extends _$BlocTestStateCopyWithImpl<$Res>
    implements _$BlocTestStateCopyWith<$Res> {
  __$BlocTestStateCopyWithImpl(
      _BlocTestState _value, $Res Function(_BlocTestState) _then)
      : super(_value, (v) => _then(v as _BlocTestState));

  @override
  _BlocTestState get _value => super._value as _BlocTestState;

  @override
  $Res call({
    Object emailTest = freezed,
  }) {
    return _then(_BlocTestState(
      emailTest: emailTest == freezed
          ? _value.emailTest
          : emailTest as Option<EmailAddress>,
    ));
  }
}

/// @nodoc
class _$_BlocTestState implements _BlocTestState {
  const _$_BlocTestState({@required this.emailTest})
      : assert(emailTest != null);

  @override
  final Option<EmailAddress> emailTest;

  @override
  String toString() {
    return 'BlocTestState(emailTest: $emailTest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlocTestState &&
            (identical(other.emailTest, emailTest) ||
                const DeepCollectionEquality()
                    .equals(other.emailTest, emailTest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailTest);

  @JsonKey(ignore: true)
  @override
  _$BlocTestStateCopyWith<_BlocTestState> get copyWith =>
      __$BlocTestStateCopyWithImpl<_BlocTestState>(this, _$identity);
}

abstract class _BlocTestState implements BlocTestState {
  const factory _BlocTestState({@required Option<EmailAddress> emailTest}) =
      _$_BlocTestState;

  @override
  Option<EmailAddress> get emailTest;
  @override
  @JsonKey(ignore: true)
  _$BlocTestStateCopyWith<_BlocTestState> get copyWith;
}
