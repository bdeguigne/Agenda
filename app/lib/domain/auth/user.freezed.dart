// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@JsonKey(ignore: true) UniqueId id,
      @required Name firstName,
      @required Name lastName,
      @required EmailAddress email,
      @required Role role,
      @required ProfilePicture picture}) {
    return _User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      role: role,
      picture: picture,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @JsonKey(ignore: true)
  UniqueId get id;
  Name get firstName;
  Name get lastName;
  EmailAddress get email;
  Role get role;
  ProfilePicture get picture;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) UniqueId id,
      Name firstName,
      Name lastName,
      EmailAddress email,
      Role role,
      ProfilePicture picture});

  $ProfilePictureCopyWith<$Res> get picture;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object role = freezed,
    Object picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      firstName: firstName == freezed ? _value.firstName : firstName as Name,
      lastName: lastName == freezed ? _value.lastName : lastName as Name,
      email: email == freezed ? _value.email : email as EmailAddress,
      role: role == freezed ? _value.role : role as Role,
      picture: picture == freezed ? _value.picture : picture as ProfilePicture,
    ));
  }

  @override
  $ProfilePictureCopyWith<$Res> get picture {
    if (_value.picture == null) {
      return null;
    }
    return $ProfilePictureCopyWith<$Res>(_value.picture, (value) {
      return _then(_value.copyWith(picture: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) UniqueId id,
      Name firstName,
      Name lastName,
      EmailAddress email,
      Role role,
      ProfilePicture picture});

  @override
  $ProfilePictureCopyWith<$Res> get picture;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object role = freezed,
    Object picture = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      firstName: firstName == freezed ? _value.firstName : firstName as Name,
      lastName: lastName == freezed ? _value.lastName : lastName as Name,
      email: email == freezed ? _value.email : email as EmailAddress,
      role: role == freezed ? _value.role : role as Role,
      picture: picture == freezed ? _value.picture : picture as ProfilePicture,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {@JsonKey(ignore: true) this.id,
      @required this.firstName,
      @required this.lastName,
      @required this.email,
      @required this.role,
      @required this.picture})
      : assert(firstName != null),
        assert(lastName != null),
        assert(email != null),
        assert(role != null),
        assert(picture != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  @JsonKey(ignore: true)
  final UniqueId id;
  @override
  final Name firstName;
  @override
  final Name lastName;
  @override
  final EmailAddress email;
  @override
  final Role role;
  @override
  final ProfilePicture picture;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, email: $email, role: $role, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(picture);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(ignore: true) UniqueId id,
      @required Name firstName,
      @required Name lastName,
      @required EmailAddress email,
      @required Role role,
      @required ProfilePicture picture}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(ignore: true)
  UniqueId get id;
  @override
  Name get firstName;
  @override
  Name get lastName;
  @override
  EmailAddress get email;
  @override
  Role get role;
  @override
  ProfilePicture get picture;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
