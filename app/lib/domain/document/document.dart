import 'dart:io';

import 'package:agenda/domain/core/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
abstract class Document with _$Document {
  @JsonSerializable(explicitToJson: true)
  factory Document({
    @JsonKey(ignore: true) UniqueId id,
    @required String fileName,
    @JsonKey(ignore: true) File file,
    String storagePath,
  }) = _Document;

  const Document._();

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  factory Document.fromFile(File file, String fileName) {
    final id = UniqueId();
    return Document(
      id: id,
      fileName: fileName,
      file: file,
    );
  }
}
