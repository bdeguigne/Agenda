// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'right.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CollectionRight _$_$_CollectionRightFromJson(Map<String, dynamic> json) {
  return _$_CollectionRight(
    collection: json['collection'] as String,
    rights: (json['rights'] as List)
        ?.map(
            (e) => e == null ? null : Right.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CollectionRightToJson(_$_CollectionRight instance) =>
    <String, dynamic>{
      'collection': instance.collection,
      'rights': instance.rights,
    };

_$_Right _$_$_RightFromJson(Map<String, dynamic> json) {
  return _$_Right(
    name: json['name'] as String,
    slug: json['slug'] as String,
  );
}

Map<String, dynamic> _$_$_RightToJson(_$_Right instance) => <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
    };
