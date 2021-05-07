import 'package:agenda/domain/collection_right/right.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'roles.freezed.dart';
part 'roles.g.dart';

@freezed
abstract class Roles with _$Roles {
  const factory Roles({
    @required String name,
    @required List<Right> rights,
  }) = _Roles;

  factory Roles.fromJson(Map<String, dynamic> json) => _$RolesFromJson(json);

  factory Roles.fromFirestore(DocumentSnapshot doc) {
    return Roles.fromJson(doc.data());
  }
}
