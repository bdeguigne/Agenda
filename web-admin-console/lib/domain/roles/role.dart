import 'package:agenda/domain/collection_right/right.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.freezed.dart';
part 'role.g.dart';

@freezed
abstract class Role with _$Role {
  @JsonSerializable(explicitToJson: true)
  const factory Role({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required List<Right> rights,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  factory Role.fromFirestore(DocumentSnapshot doc) {
    return Role.fromJson(doc.data()).copyWith(
      id: doc.id,
    );
  }
}
