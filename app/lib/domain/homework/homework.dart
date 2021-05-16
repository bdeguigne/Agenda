import 'package:agenda/domain/core/timestamp_converter.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:agenda/domain/document/document.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework.freezed.dart';
part 'homework.g.dart';

@freezed
abstract class Homework with _$Homework {
  @JsonSerializable(explicitToJson: true)
  const factory Homework({
    @JsonKey(ignore: true) UniqueId id,
    @required String title,
    @required String subject,
    @required String description,
    @required @TimestampConverter() DateTime deliveryDate,
    @required List<Document> homeworkDocuments,
  }) = _Homework;

  const Homework._();

  factory Homework.fromJson(Map<String, dynamic> json) =>
      _$HomeworkFromJson(json);
}
