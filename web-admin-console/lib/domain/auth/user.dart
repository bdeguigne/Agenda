import 'package:agenda/domain/core/value_object.dart';
import 'package:agenda/domain/profile/profile_picture.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_value_objects.dart';

part 'user.freezed.dart';
part 'user.g.dart';

class RoleTypes {
  static const student = "student";
  static const teacher = "teacher";
  static const admin = "admin";
}

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(ignore: true) UniqueId id,
    @required Name displayName,
    @required EmailAddress email,
    @required Role role,
    @required ProfilePicture picture,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromFirestore(DocumentSnapshot doc) {
    return User.fromJson(doc.data()).copyWith(
      id: UniqueId.fromUniqueString(doc.id),
    );
  }
}
