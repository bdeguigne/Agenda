import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:agenda/domain/users/i_users_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:agenda/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IUsersRepository)
class UsersRepository implements IUsersRepository {
  final FirebaseFirestore _firestore;

  UsersRepository(this._firestore);

  @override
  Stream<List<User>> watchAll(Function(RepositoryFailure) onError) async* {
    yield* _firestore.collection("users").snapshots().map(
      (snapshot) {
        return snapshot.docs.map((doc) => User.fromFirestore(doc)).toList();
      },
    ).handleError((e) {
      if (e is FirebaseException && e.code == "permission-denied") {
        return onError(const RepositoryFailure.insufficientPermission());
      } else {
        return onError(const RepositoryFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<RepositoryFailure, Unit>> update(
      Map<String, dynamic> data, UniqueId userId) async {
    try {
      await _firestore
          .collection("users")
          .doc(userId.getOrCrash())
          .update(data);

      return right(unit);
    } on FirebaseException catch (e) {
      print("ERROR ${e.code}");
      if (e.code.contains('permission-denied')) {
        return left(const RepositoryFailure.insufficientPermission());
      } else if (e.code.contains('not-found')) {
        return left(const RepositoryFailure.unableToUpdate());
      } else {
        return left(const RepositoryFailure.unexpected());
      }
    }
  }
}
