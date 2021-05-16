import 'package:agenda/domain/core/timestamp_converter.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:agenda/domain/document/document.dart';
import 'package:agenda/domain/homework/homework.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework_dto.freezed.dart';
part 'homework_dto.g.dart';

@freezed
abstract class HomeworkDto with _$HomeworkDto {
  @JsonSerializable(explicitToJson: true)
  const factory HomeworkDto({
    @JsonKey(ignore: true) String id,
    @required String title,
    @required String subject,
    @required String description,
    @required @TimestampConverter() DateTime deliveryDate,
    @required List<Document> homeworkDocuments,
  }) = _HomeworkDto;

  const HomeworkDto._();

  Homework toDomain() {
    return Homework(
      id: UniqueId.fromUniqueString(id),
      title: title,
      subject: subject,
      description: description,
      deliveryDate: deliveryDate,
      homeworkDocuments: homeworkDocuments,
    );
  }

  factory HomeworkDto.fromJson(Map<String, dynamic> json) =>
      _$HomeworkDtoFromJson(json);

  factory HomeworkDto.fromFirestore(DocumentSnapshot doc) {
    return HomeworkDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
