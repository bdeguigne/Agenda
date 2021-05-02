// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

// ignore: unused_element
  ProfilePictureChanged profilePictureChanged(File path) {
    return ProfilePictureChanged(
      path,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  File get path;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult profilePictureChanged(File path),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult profilePictureChanged(File path),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult profilePictureChanged(ProfilePictureChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult profilePictureChanged(ProfilePictureChanged value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ProfileEventCopyWith<ProfileEvent> get copyWith;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
  $Res call({File path});
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;

  @override
  $Res call({
    Object path = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed ? _value.path : path as File,
    ));
  }
}

/// @nodoc
abstract class $ProfilePictureChangedCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $ProfilePictureChangedCopyWith(ProfilePictureChanged value,
          $Res Function(ProfilePictureChanged) then) =
      _$ProfilePictureChangedCopyWithImpl<$Res>;
  @override
  $Res call({File path});
}

/// @nodoc
class _$ProfilePictureChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ProfilePictureChangedCopyWith<$Res> {
  _$ProfilePictureChangedCopyWithImpl(
      ProfilePictureChanged _value, $Res Function(ProfilePictureChanged) _then)
      : super(_value, (v) => _then(v as ProfilePictureChanged));

  @override
  ProfilePictureChanged get _value => super._value as ProfilePictureChanged;

  @override
  $Res call({
    Object path = freezed,
  }) {
    return _then(ProfilePictureChanged(
      path == freezed ? _value.path : path as File,
    ));
  }
}

/// @nodoc
class _$ProfilePictureChanged implements ProfilePictureChanged {
  const _$ProfilePictureChanged(this.path) : assert(path != null);

  @override
  final File path;

  @override
  String toString() {
    return 'ProfileEvent.profilePictureChanged(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfilePictureChanged &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  $ProfilePictureChangedCopyWith<ProfilePictureChanged> get copyWith =>
      _$ProfilePictureChangedCopyWithImpl<ProfilePictureChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult profilePictureChanged(File path),
  }) {
    assert(profilePictureChanged != null);
    return profilePictureChanged(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult profilePictureChanged(File path),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profilePictureChanged != null) {
      return profilePictureChanged(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult profilePictureChanged(ProfilePictureChanged value),
  }) {
    assert(profilePictureChanged != null);
    return profilePictureChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult profilePictureChanged(ProfilePictureChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profilePictureChanged != null) {
      return profilePictureChanged(this);
    }
    return orElse();
  }
}

abstract class ProfilePictureChanged implements ProfileEvent {
  const factory ProfilePictureChanged(File path) = _$ProfilePictureChanged;

  @override
  File get path;
  @override
  @JsonKey(ignore: true)
  $ProfilePictureChangedCopyWith<ProfilePictureChanged> get copyWith;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

// ignore: unused_element
  _ProfileState call(
      {@required
          bool isProfilePictureLoading,
      @required
          Option<Either<AuthFailure, Unit>> profileFailureOrSuccessOption}) {
    return _ProfileState(
      isProfilePictureLoading: isProfilePictureLoading,
      profileFailureOrSuccessOption: profileFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  bool get isProfilePictureLoading;
  Option<Either<AuthFailure, Unit>> get profileFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool isProfilePictureLoading,
      Option<Either<AuthFailure, Unit>> profileFailureOrSuccessOption});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object isProfilePictureLoading = freezed,
    Object profileFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isProfilePictureLoading: isProfilePictureLoading == freezed
          ? _value.isProfilePictureLoading
          : isProfilePictureLoading as bool,
      profileFailureOrSuccessOption: profileFailureOrSuccessOption == freezed
          ? _value.profileFailureOrSuccessOption
          : profileFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isProfilePictureLoading,
      Option<Either<AuthFailure, Unit>> profileFailureOrSuccessOption});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object isProfilePictureLoading = freezed,
    Object profileFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProfileState(
      isProfilePictureLoading: isProfilePictureLoading == freezed
          ? _value.isProfilePictureLoading
          : isProfilePictureLoading as bool,
      profileFailureOrSuccessOption: profileFailureOrSuccessOption == freezed
          ? _value.profileFailureOrSuccessOption
          : profileFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {@required this.isProfilePictureLoading,
      @required this.profileFailureOrSuccessOption})
      : assert(isProfilePictureLoading != null),
        assert(profileFailureOrSuccessOption != null);

  @override
  final bool isProfilePictureLoading;
  @override
  final Option<Either<AuthFailure, Unit>> profileFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileState(isProfilePictureLoading: $isProfilePictureLoading, profileFailureOrSuccessOption: $profileFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileState &&
            (identical(
                    other.isProfilePictureLoading, isProfilePictureLoading) ||
                const DeepCollectionEquality().equals(
                    other.isProfilePictureLoading, isProfilePictureLoading)) &&
            (identical(other.profileFailureOrSuccessOption,
                    profileFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.profileFailureOrSuccessOption,
                    profileFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isProfilePictureLoading) ^
      const DeepCollectionEquality().hash(profileFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {@required
          bool isProfilePictureLoading,
      @required
          Option<Either<AuthFailure, Unit>>
              profileFailureOrSuccessOption}) = _$_ProfileState;

  @override
  bool get isProfilePictureLoading;
  @override
  Option<Either<AuthFailure, Unit>> get profileFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith;
}
