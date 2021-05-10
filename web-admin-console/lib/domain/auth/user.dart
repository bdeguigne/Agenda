import 'package:agenda/domain/collection_right/right.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:agenda/domain/profile/profile_picture.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_value_objects.dart';

part 'user.freezed.dart';
part 'user.g.dart';

bool isUserAdmin(Permissions permissions) {
  return permissions.rights.contains("USERS_R") &&
      permissions.rights.contains("USERS_U") &&
      permissions.rights.contains("RIGHTS_R") &&
      permissions.rights.contains("RIGHTS_R");
}

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(ignore: true) UniqueId id,
    @required Name displayName,
    @required EmailAddress email,
    @required Permissions permissions,
    @required ProfilePicture picture,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromFirestore(DocumentSnapshot doc) {
    return User.fromJson(doc.data()).copyWith(
      id: UniqueId.fromUniqueString(doc.id),
    );
  }

  bool get isAdmin => isUserAdmin(permissions);
}

@freezed
@immutable
abstract class Permissions with _$Permissions {
  const factory Permissions({
    @required String role,
    @required List<String> rights,
  }) = _Permissions;

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);
}
