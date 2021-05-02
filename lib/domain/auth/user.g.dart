// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    email: json['email'] == null
        ? null
        : EmailAddress.fromJson(json['email'] as String),
    role: json['role'] == null ? null : Role.fromJson(json['role'] as String),
    picture: json['picture'] == null
        ? null
        : ProfilePicture.fromJson(json['picture'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'role': instance.role,
      'picture': instance.picture,
    };
