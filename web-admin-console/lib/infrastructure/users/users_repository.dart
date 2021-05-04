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
  Stream<Either<UserFailure, List<User>>> watchAll() async* {
    try {
      yield* _firestore.collection("users").snapshots().map(
            (snapshot) => right<UserFailure, List<User>>(
              snapshot.docs.map((doc) => User.fromFirestore(doc)).toList(),
            ),
          );
    } on FirebaseException {
      yield left(const UserFailure.unexptected());
    }
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
