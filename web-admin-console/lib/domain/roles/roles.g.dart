// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Roles _$_$_RolesFromJson(Map<String, dynamic> json) {
  return _$_Roles(
    name: json['name'] as String,
    rights: (json['rights'] as List)
        ?.map(
            (e) => e == null ? null : Right.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_RolesToJson(_$_Roles instance) => <String, dynamic>{
      'name': instance.name,
      'rights': instance.rights,
    };
