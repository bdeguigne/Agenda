import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'right.freezed.dart';
part 'right.g.dart';

@freezed
abstract class CollectionRight with _$CollectionRight {
  const factory CollectionRight({
    @required String collection,
    @required List<Right> rights,
  }) = _CollectionRight;

  const CollectionRight._();

  factory CollectionRight.fromJson(Map<String, dynamic> json) =>
      _$CollectionRightFromJson(json);

  factory CollectionRight.fromFirestore(DocumentSnapshot doc) {
    return CollectionRight.fromJson(doc.data());
  }
}

@freezed
abstract class Right with _$Right {
  @JsonSerializable(explicitToJson: true)
  const factory Right({
    @required String name,
    @required String slug,
  }) = _Right;

  const Right._();

  factory Right.fromJson(Map<String, dynamic> json) => _$RightFromJson(json);
}
