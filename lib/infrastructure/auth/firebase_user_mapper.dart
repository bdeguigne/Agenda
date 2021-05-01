import 'package:agenda/domain/core/value_object.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:agenda/domain/auth/user.dart';

extension FirebaseFirestoreDomainX on FirebaseFirestore {
  Future<User> toDomain(firebase.User firebaseUser) async {
    if (firebaseUser == null) {
      return null;
    }
    final DocumentSnapshot document =
        await collection("users").doc(firebaseUser.uid).get();

    return User.fromJson(document.data()).copyWith(
      id: UniqueId.fromUniqueString(firebaseUser.uid),
    );
  }
}
