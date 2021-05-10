import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/roles/i_roles_repository.dart';
import 'package:agenda/domain/roles/role.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRolesRepository)
class RolesRepository implements IRolesRepository {
  final FirebaseFirestore _firebaseFirestore;

  RolesRepository(this._firebaseFirestore);

  @override
  Stream<List<Role>> watchAll(
      Function(RepositoryFailure failure) onError) async* {
    yield* _firebaseFirestore.collection("roles").snapshots().map(
      (snapshot) {
        return snapshot.docs.map((doc) {
          return Role.fromFirestore(doc);
        }).toList();
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
  Future<Either<RepositoryFailure, Unit>> update(Role role) async {
    try {
      print(role.toJson());
      await _firebaseFirestore
          .collection("roles")
          .doc(role.id)
          .update(role.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
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
