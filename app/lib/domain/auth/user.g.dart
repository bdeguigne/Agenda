// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    firstName: json['firstName'] == null
        ? null
        : Name.fromJson(json['firstName'] as String),
    lastName: json['lastName'] == null
        ? null
        : Name.fromJson(json['lastName'] as String),
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
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'role': instance.role,
      'picture': instance.picture,
    };
