import 'package:agenda/domain/auth/auth_value_objects.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:agenda/domain/profile/profile_picture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    @required Permissions permissions,
    @required ProfilePicture picture,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  bool get isTeacher {
    return permissions.isTeacher;
  }
}

@freezed
@immutable
abstract class Permissions with _$Permissions {
  const factory Permissions({
    @required Role role,
    @required List<String> rights,
  }) = _Permissions;

  const Permissions._();

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);

  bool get isTeacher {
    return rights.contains("HOMEWORKS_C");
  }

  // @override
  // Map<String, dynamic> toJson() => {'permissions': role.toJson()};
}
