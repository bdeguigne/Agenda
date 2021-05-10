// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Role _$_$_RoleFromJson(Map<String, dynamic> json) {
  return _$_Role(
    name: json['name'] as String,
    rights: (json['rights'] as List)
        ?.map(
            (e) => e == null ? null : Right.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_RoleToJson(_$_Role instance) => <String, dynamic>{
      'name': instance.name,
      'rights': instance.rights?.map((e) => e?.toJson())?.toList(),
    };
