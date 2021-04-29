import 'package:agenda/domain/auth/auth_value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:agenda/domain/auth/user.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      // id: UniqueId.fromUniqueString(uid),
      email: EmailAddress(email),
      role: Role(RoleTypes.student),
    );
  }
}

extension FirestoreUserDocumentDomainX on DocumentReference {
  Future<User> toDomain() async {
    final DocumentSnapshot document = await get();
    return User.fromJson(document.data());
  }
}

extension FirebaseFirestoreDomainX on FirebaseFirestore {
  Future<User> toDomain(firebase.User firebaseUser) async {
    final DocumentSnapshot document =
        await collection("users").doc(firebaseUser.uid).get();
    return User.fromJson(document.data());
  }
}
