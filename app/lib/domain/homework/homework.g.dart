// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Homework _$_$_HomeworkFromJson(Map<String, dynamic> json) {
  return _$_Homework(
    title: json['title'] as String,
    subject: json['subject'] as String,
    description: json['description'] as String,
    deliveryDate: json['deliveryDate'] == null
        ? null
        : DateTime.parse(json['deliveryDate'] as String),
    homeworkDocuments: (json['homeworkDocuments'] as List)
        ?.map((e) =>
            e == null ? null : Document.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_HomeworkToJson(_$_Homework instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subject': instance.subject,
      'description': instance.description,
      'deliveryDate': instance.deliveryDate?.toIso8601String(),
      'homeworkDocuments':
          instance.homeworkDocuments?.map((e) => e?.toJson())?.toList(),
    };
