// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    displayName: json['displayName'] == null
        ? null
        : Name.fromJson(json['displayName'] as String),
    email: json['email'] == null
        ? null
        : EmailAddress.fromJson(json['email'] as String),
    permissions: json['permissions'] == null
        ? null
        : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
    picture: json['picture'] == null
        ? null
        : ProfilePicture.fromJson(json['picture'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'permissions': instance.permissions,
      'picture': instance.picture,
    };

_$_Permissions _$_$_PermissionsFromJson(Map<String, dynamic> json) {
  return _$_Permissions(
    role: json['role'] == null ? null : Role.fromJson(json['role'] as String),
    rights: (json['rights'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_PermissionsToJson(_$_Permissions instance) =>
    <String, dynamic>{
      'role': instance.role,
      'rights': instance.rights,
    };
