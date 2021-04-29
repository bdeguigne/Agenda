import 'package:agenda/domain/auth/auth_value_objects.dart';
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
    // @JsonKey(ignore: true) UniqueId id,
    @required EmailAddress email,
    @required Role role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
