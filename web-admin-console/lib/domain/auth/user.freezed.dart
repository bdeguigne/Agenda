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
      @required Name displayName,
      @required EmailAddress email,
      @required Permissions permissions,
      @required ProfilePicture picture}) {
    return _User(
      id: id,
      displayName: displayName,
      email: email,
      permissions: permissions,
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
  Name get displayName;
  EmailAddress get email;
  Permissions get permissions;
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
      Name displayName,
      EmailAddress email,
      Permissions permissions,
      ProfilePicture picture});

  $PermissionsCopyWith<$Res> get permissions;
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
    Object displayName = freezed,
    Object email = freezed,
    Object permissions = freezed,
    Object picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      displayName:
          displayName == freezed ? _value.displayName : displayName as Name,
      email: email == freezed ? _value.email : email as EmailAddress,
      permissions: permissions == freezed
          ? _value.permissions
          : permissions as Permissions,
      picture: picture == freezed ? _value.picture : picture as ProfilePicture,
    ));
  }

  @override
  $PermissionsCopyWith<$Res> get permissions {
    if (_value.permissions == null) {
      return null;
    }
    return $PermissionsCopyWith<$Res>(_value.permissions, (value) {
      return _then(_value.copyWith(permissions: value));
    });
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
      Name displayName,
      EmailAddress email,
      Permissions permissions,
      ProfilePicture picture});

  @override
  $PermissionsCopyWith<$Res> get permissions;
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
    Object displayName = freezed,
    Object email = freezed,
    Object permissions = freezed,
    Object picture = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      displayName:
          displayName == freezed ? _value.displayName : displayName as Name,
      email: email == freezed ? _value.email : email as EmailAddress,
      permissions: permissions == freezed
          ? _value.permissions
          : permissions as Permissions,
      picture: picture == freezed ? _value.picture : picture as ProfilePicture,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User extends _User {
  const _$_User(
      {@JsonKey(ignore: true) this.id,
      @required this.displayName,
      @required this.email,
      @required this.permissions,
      @required this.picture})
      : assert(displayName != null),
        assert(email != null),
        assert(permissions != null),
        assert(picture != null),
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  @JsonKey(ignore: true)
  final UniqueId id;
  @override
  final Name displayName;
  @override
  final EmailAddress email;
  @override
  final Permissions permissions;
  @override
  final ProfilePicture picture;

  @override
  String toString() {
    return 'User(id: $id, displayName: $displayName, email: $email, permissions: $permissions, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality()
                    .equals(other.permissions, permissions)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(permissions) ^
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

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {@JsonKey(ignore: true) UniqueId id,
      @required Name displayName,
      @required EmailAddress email,
      @required Permissions permissions,
      @required ProfilePicture picture}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(ignore: true)
  UniqueId get id;
  @override
  Name get displayName;
  @override
  EmailAddress get email;
  @override
  Permissions get permissions;
  @override
  ProfilePicture get picture;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return _Permissions.fromJson(json);
}

/// @nodoc
class _$PermissionsTearOff {
  const _$PermissionsTearOff();

// ignore: unused_element
  _Permissions call({@required Role role}) {
    return _Permissions(
      role: role,
    );
  }

// ignore: unused_element
  Permissions fromJson(Map<String, Object> json) {
    return Permissions.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Permissions = _$PermissionsTearOff();

/// @nodoc
mixin _$Permissions {
  Role get role;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PermissionsCopyWith<Permissions> get copyWith;
}

/// @nodoc
abstract class $PermissionsCopyWith<$Res> {
  factory $PermissionsCopyWith(
          Permissions value, $Res Function(Permissions) then) =
      _$PermissionsCopyWithImpl<$Res>;
  $Res call({Role role});
}

/// @nodoc
class _$PermissionsCopyWithImpl<$Res> implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._value, this._then);

  final Permissions _value;
  // ignore: unused_field
  final $Res Function(Permissions) _then;

  @override
  $Res call({
    Object role = freezed,
  }) {
    return _then(_value.copyWith(
      role: role == freezed ? _value.role : role as Role,
    ));
  }
}

/// @nodoc
abstract class _$PermissionsCopyWith<$Res>
    implements $PermissionsCopyWith<$Res> {
  factory _$PermissionsCopyWith(
          _Permissions value, $Res Function(_Permissions) then) =
      __$PermissionsCopyWithImpl<$Res>;
  @override
  $Res call({Role role});
}

/// @nodoc
class __$PermissionsCopyWithImpl<$Res> extends _$PermissionsCopyWithImpl<$Res>
    implements _$PermissionsCopyWith<$Res> {
  __$PermissionsCopyWithImpl(
      _Permissions _value, $Res Function(_Permissions) _then)
      : super(_value, (v) => _then(v as _Permissions));

  @override
  _Permissions get _value => super._value as _Permissions;

  @override
  $Res call({
    Object role = freezed,
  }) {
    return _then(_Permissions(
      role: role == freezed ? _value.role : role as Role,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Permissions implements _Permissions {
  const _$_Permissions({@required this.role}) : assert(role != null);

  factory _$_Permissions.fromJson(Map<String, dynamic> json) =>
      _$_$_PermissionsFromJson(json);

  @override
  final Role role;

  @override
  String toString() {
    return 'Permissions(role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Permissions &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(role);

  @JsonKey(ignore: true)
  @override
  _$PermissionsCopyWith<_Permissions> get copyWith =>
      __$PermissionsCopyWithImpl<_Permissions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PermissionsToJson(this);
  }
}

abstract class _Permissions implements Permissions {
  const factory _Permissions({@required Role role}) = _$_Permissions;

  factory _Permissions.fromJson(Map<String, dynamic> json) =
      _$_Permissions.fromJson;

  @override
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$PermissionsCopyWith<_Permissions> get copyWith;
}
