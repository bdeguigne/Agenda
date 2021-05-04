// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProfilePicture _$ProfilePictureFromJson(Map<String, dynamic> json) {
  return _ProfilePicture.fromJson(json);
}

/// @nodoc
class _$ProfilePictureTearOff {
  const _$ProfilePictureTearOff();

// ignore: unused_element
  _ProfilePicture call({@required String photoUrl, @required bool isStorage}) {
    return _ProfilePicture(
      photoUrl: photoUrl,
      isStorage: isStorage,
    );
  }

// ignore: unused_element
  ProfilePicture fromJson(Map<String, Object> json) {
    return ProfilePicture.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProfilePicture = _$ProfilePictureTearOff();

/// @nodoc
mixin _$ProfilePicture {
  String get photoUrl;
  bool get isStorage;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProfilePictureCopyWith<ProfilePicture> get copyWith;
}

/// @nodoc
abstract class $ProfilePictureCopyWith<$Res> {
  factory $ProfilePictureCopyWith(
          ProfilePicture value, $Res Function(ProfilePicture) then) =
      _$ProfilePictureCopyWithImpl<$Res>;
  $Res call({String photoUrl, bool isStorage});
}

/// @nodoc
class _$ProfilePictureCopyWithImpl<$Res>
    implements $ProfilePictureCopyWith<$Res> {
  _$ProfilePictureCopyWithImpl(this._value, this._then);

  final ProfilePicture _value;
  // ignore: unused_field
  final $Res Function(ProfilePicture) _then;

  @override
  $Res call({
    Object photoUrl = freezed,
    Object isStorage = freezed,
  }) {
    return _then(_value.copyWith(
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isStorage: isStorage == freezed ? _value.isStorage : isStorage as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProfilePictureCopyWith<$Res>
    implements $ProfilePictureCopyWith<$Res> {
  factory _$ProfilePictureCopyWith(
          _ProfilePicture value, $Res Function(_ProfilePicture) then) =
      __$ProfilePictureCopyWithImpl<$Res>;
  @override
  $Res call({String photoUrl, bool isStorage});
}

/// @nodoc
class __$ProfilePictureCopyWithImpl<$Res>
    extends _$ProfilePictureCopyWithImpl<$Res>
    implements _$ProfilePictureCopyWith<$Res> {
  __$ProfilePictureCopyWithImpl(
      _ProfilePicture _value, $Res Function(_ProfilePicture) _then)
      : super(_value, (v) => _then(v as _ProfilePicture));

  @override
  _ProfilePicture get _value => super._value as _ProfilePicture;

  @override
  $Res call({
    Object photoUrl = freezed,
    Object isStorage = freezed,
  }) {
    return _then(_ProfilePicture(
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      isStorage: isStorage == freezed ? _value.isStorage : isStorage as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProfilePicture extends _ProfilePicture {
  const _$_ProfilePicture({@required this.photoUrl, @required this.isStorage})
      : assert(photoUrl != null),
        assert(isStorage != null),
        super._();

  factory _$_ProfilePicture.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfilePictureFromJson(json);

  @override
  final String photoUrl;
  @override
  final bool isStorage;

  @override
  String toString() {
    return 'ProfilePicture(photoUrl: $photoUrl, isStorage: $isStorage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfilePicture &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.isStorage, isStorage) ||
                const DeepCollectionEquality()
                    .equals(other.isStorage, isStorage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(isStorage);

  @JsonKey(ignore: true)
  @override
  _$ProfilePictureCopyWith<_ProfilePicture> get copyWith =>
      __$ProfilePictureCopyWithImpl<_ProfilePicture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfilePictureToJson(this);
  }
}

abstract class _ProfilePicture extends ProfilePicture {
  const _ProfilePicture._() : super._();
  const factory _ProfilePicture(
      {@required String photoUrl,
      @required bool isStorage}) = _$_ProfilePicture;

  factory _ProfilePicture.fromJson(Map<String, dynamic> json) =
      _$_ProfilePicture.fromJson;

  @override
  String get photoUrl;
  @override
  bool get isStorage;
  @override
  @JsonKey(ignore: true)
  _$ProfilePictureCopyWith<_ProfilePicture> get copyWith;
}
