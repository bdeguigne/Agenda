import 'package:agenda/domain/core/value_object.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:agenda/domain/auth/user.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
