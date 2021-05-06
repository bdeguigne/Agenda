// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'homework_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeworkEventTearOff {
  const _$HomeworkEventTearOff();

// ignore: unused_element
  Created created() {
    return const Created();
  }

// ignore: unused_element
  GetAll getAll() {
    return const GetAll();
  }

// ignore: unused_element
  GetAllUsers getAllUsers() {
    return const GetAllUsers();
  }
}

/// @nodoc
// ignore: unused_element
const $HomeworkEvent = _$HomeworkEventTearOff();

/// @nodoc
mixin _$HomeworkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult created(),
    @required TResult getAll(),
    @required TResult getAllUsers(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult created(),
    TResult getAll(),
    TResult getAllUsers(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult created(Created value),
    @required TResult getAll(GetAll value),
    @required TResult getAllUsers(GetAllUsers value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult created(Created value),
    TResult getAll(GetAll value),
    TResult getAllUsers(GetAllUsers value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HomeworkEventCopyWith<$Res> {
  factory $HomeworkEventCopyWith(
          HomeworkEvent value, $Res Function(HomeworkEvent) then) =
      _$HomeworkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeworkEventCopyWithImpl<$Res>
    implements $HomeworkEventCopyWith<$Res> {
  _$HomeworkEventCopyWithImpl(this._value, this._then);

  final HomeworkEvent _value;
  // ignore: unused_field
  final $Res Function(HomeworkEvent) _then;
}

/// @nodoc
abstract class $CreatedCopyWith<$Res> {
  factory $CreatedCopyWith(Created value, $Res Function(Created) then) =
      _$CreatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatedCopyWithImpl<$Res> extends _$HomeworkEventCopyWithImpl<$Res>
    implements $CreatedCopyWith<$Res> {
  _$CreatedCopyWithImpl(Created _value, $Res Function(Created) _then)
      : super(_value, (v) => _then(v as Created));

  @override
  Created get _value => super._value as Created;
}

/// @nodoc
class _$Created implements Created {
  const _$Created();

  @override
  String toString() {
    return 'HomeworkEvent.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Created);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult created(),
    @required TResult getAll(),
    @required TResult getAllUsers(),
  }) {
    assert(created != null);
    assert(getAll != null);
    assert(getAllUsers != null);
    return created();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult created(),
    TResult getAll(),
    TResult getAllUsers(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult created(Created value),
    @required TResult getAll(GetAll value),
    @required TResult getAllUsers(GetAllUsers value),
  }) {
    assert(created != null);
    assert(getAll != null);
    assert(getAllUsers != null);
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult created(Created value),
    TResult getAll(GetAll value),
    TResult getAllUsers(GetAllUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class Created implements HomeworkEvent {
  const factory Created() = _$Created;
}

/// @nodoc
abstract class $GetAllCopyWith<$Res> {
  factory $GetAllCopyWith(GetAll value, $Res Function(GetAll) then) =
      _$GetAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllCopyWithImpl<$Res> extends _$HomeworkEventCopyWithImpl<$Res>
    implements $GetAllCopyWith<$Res> {
  _$GetAllCopyWithImpl(GetAll _value, $Res Function(GetAll) _then)
      : super(_value, (v) => _then(v as GetAll));

  @override
  GetAll get _value => super._value as GetAll;
}

/// @nodoc
class _$GetAll implements GetAll {
  const _$GetAll();

  @override
  String toString() {
    return 'HomeworkEvent.getAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult created(),
    @required TResult getAll(),
    @required TResult getAllUsers(),
  }) {
    assert(created != null);
    assert(getAll != null);
    assert(getAllUsers != null);
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult created(),
    TResult getAll(),
    TResult getAllUsers(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult created(Created value),
    @required TResult getAll(GetAll value),
    @required TResult getAllUsers(GetAllUsers value),
  }) {
    assert(created != null);
    assert(getAll != null);
    assert(getAllUsers != null);
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult created(Created value),
    TResult getAll(GetAll value),
    TResult getAllUsers(GetAllUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class GetAll implements HomeworkEvent {
  const factory GetAll() = _$GetAll;
}

/// @nodoc
abstract class $GetAllUsersCopyWith<$Res> {
  factory $GetAllUsersCopyWith(
          GetAllUsers value, $Res Function(GetAllUsers) then) =
      _$GetAllUsersCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllUsersCopyWithImpl<$Res> extends _$HomeworkEventCopyWithImpl<$Res>
    implements $GetAllUsersCopyWith<$Res> {
  _$GetAllUsersCopyWithImpl(
      GetAllUsers _value, $Res Function(GetAllUsers) _then)
      : super(_value, (v) => _then(v as GetAllUsers));

  @override
  GetAllUsers get _value => super._value as GetAllUsers;
}

/// @nodoc
class _$GetAllUsers implements GetAllUsers {
  const _$GetAllUsers();

  @override
  String toString() {
    return 'HomeworkEvent.getAllUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult created(),
    @required TResult getAll(),
    @required TResult getAllUsers(),
  }) {
    assert(created != null);
    assert(getAll != null);
    assert(getAllUsers != null);
    return getAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult created(),
    TResult getAll(),
    TResult getAllUsers(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllUsers != null) {
      return getAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult created(Created value),
    @required TResult getAll(GetAll value),
    @required TResult getAllUsers(GetAllUsers value),
  }) {
    assert(created != null);
    assert(getAll != null);
    assert(getAllUsers != null);
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult created(Created value),
    TResult getAll(GetAll value),
    TResult getAllUsers(GetAllUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllUsers != null) {
      return getAllUsers(this);
    }
    return orElse();
  }
}

abstract class GetAllUsers implements HomeworkEvent {
  const factory GetAllUsers() = _$GetAllUsers;
}

/// @nodoc
class _$HomeworkStateTearOff {
  const _$HomeworkStateTearOff();

// ignore: unused_element
  _HomeworkState call(
      {@required
          bool isCreating,
      @required
          Option<Either<HomeworkFailure, Unit>>
              homeworkFailureOrSuccessOption}) {
    return _HomeworkState(
      isCreating: isCreating,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeworkState = _$HomeworkStateTearOff();

/// @nodoc
mixin _$HomeworkState {
  bool get isCreating;
  Option<Either<HomeworkFailure, Unit>> get homeworkFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $HomeworkStateCopyWith<HomeworkState> get copyWith;
}

/// @nodoc
abstract class $HomeworkStateCopyWith<$Res> {
  factory $HomeworkStateCopyWith(
          HomeworkState value, $Res Function(HomeworkState) then) =
      _$HomeworkStateCopyWithImpl<$Res>;
  $Res call(
      {bool isCreating,
      Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption});
}

/// @nodoc
class _$HomeworkStateCopyWithImpl<$Res>
    implements $HomeworkStateCopyWith<$Res> {
  _$HomeworkStateCopyWithImpl(this._value, this._then);

  final HomeworkState _value;
  // ignore: unused_field
  final $Res Function(HomeworkState) _then;

  @override
  $Res call({
    Object isCreating = freezed,
    Object homeworkFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption == freezed
          ? _value.homeworkFailureOrSuccessOption
          : homeworkFailureOrSuccessOption
              as Option<Either<HomeworkFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$HomeworkStateCopyWith<$Res>
    implements $HomeworkStateCopyWith<$Res> {
  factory _$HomeworkStateCopyWith(
          _HomeworkState value, $Res Function(_HomeworkState) then) =
      __$HomeworkStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isCreating,
      Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption});
}

/// @nodoc
class __$HomeworkStateCopyWithImpl<$Res>
    extends _$HomeworkStateCopyWithImpl<$Res>
    implements _$HomeworkStateCopyWith<$Res> {
  __$HomeworkStateCopyWithImpl(
      _HomeworkState _value, $Res Function(_HomeworkState) _then)
      : super(_value, (v) => _then(v as _HomeworkState));

  @override
  _HomeworkState get _value => super._value as _HomeworkState;

  @override
  $Res call({
    Object isCreating = freezed,
    Object homeworkFailureOrSuccessOption = freezed,
  }) {
    return _then(_HomeworkState(
      isCreating:
          isCreating == freezed ? _value.isCreating : isCreating as bool,
      homeworkFailureOrSuccessOption: homeworkFailureOrSuccessOption == freezed
          ? _value.homeworkFailureOrSuccessOption
          : homeworkFailureOrSuccessOption
              as Option<Either<HomeworkFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_HomeworkState implements _HomeworkState {
  const _$_HomeworkState(
      {@required this.isCreating,
      @required this.homeworkFailureOrSuccessOption})
      : assert(isCreating != null),
        assert(homeworkFailureOrSuccessOption != null);

  @override
  final bool isCreating;
  @override
  final Option<Either<HomeworkFailure, Unit>> homeworkFailureOrSuccessOption;

  @override
  String toString() {
    return 'HomeworkState(isCreating: $isCreating, homeworkFailureOrSuccessOption: $homeworkFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeworkState &&
            (identical(other.isCreating, isCreating) ||
                const DeepCollectionEquality()
                    .equals(other.isCreating, isCreating)) &&
            (identical(other.homeworkFailureOrSuccessOption,
                    homeworkFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.homeworkFailureOrSuccessOption,
                    homeworkFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCreating) ^
      const DeepCollectionEquality().hash(homeworkFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$HomeworkStateCopyWith<_HomeworkState> get copyWith =>
      __$HomeworkStateCopyWithImpl<_HomeworkState>(this, _$identity);
}

abstract class _HomeworkState implements HomeworkState {
  const factory _HomeworkState(
      {@required
          bool isCreating,
      @required
          Option<Either<HomeworkFailure, Unit>>
              homeworkFailureOrSuccessOption}) = _$_HomeworkState;

  @override
  bool get isCreating;
  @override
  Option<Either<HomeworkFailure, Unit>> get homeworkFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$HomeworkStateCopyWith<_HomeworkState> get copyWith;
}
