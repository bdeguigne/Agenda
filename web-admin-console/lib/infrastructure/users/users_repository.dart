import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/users/i_users_repository.dart';
import 'package:agenda/domain/users/user_failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:agenda/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IUsersRepository)
class UsersRepository implements IUsersRepository {
  final FirebaseFirestore _firestore;

  UsersRepository(this._firestore);

  @override
  Stream<List<User>> watchAll(Function(UserFailure) onError) async* {
    yield* _firestore.collection("users").snapshots().map(
      (snapshot) {
        return snapshot.docs.map((doc) => User.fromFirestore(doc)).toList();
      },
    ).handleError((e) {
      if (e is FirebaseException && e.code == "permission-denied") {
        return onError(const UserFailure.insufficientPermission());
      } else {
        return onError(const UserFailure.unexptected());
      }
    });
  }

  @override
  void testEvent() async {
    print("TEST EVENT");
    final userDoc = await _firestore.userDocument();
    print("TEST EVENT $userDoc");
    _firestore.collection("users").snapshots().listen((snapshots) {
      snapshots.docs.map((doc) => print(doc.data()));
    });
  }
}
