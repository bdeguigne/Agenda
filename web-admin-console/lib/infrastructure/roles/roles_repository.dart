import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/roles/i_roles_repository.dart';
import 'package:agenda/domain/roles/roles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRolesRepository)
class RolesRepository implements IRolesRepository {
  final FirebaseFirestore _firebaseFirestore;

  RolesRepository(this._firebaseFirestore);

  @override
  Stream<List<Roles>> watchAll(
      Function(RepositoryFailure failure) onError) async* {
    yield* _firebaseFirestore.collection("roles").snapshots().map(
      (snapshot) {
        return snapshot.docs.map((doc) => Roles.fromFirestore(doc)).toList();
      },
    ).handleError((e) {
      if (e is FirebaseException && e.code == "permission-denied") {
        return onError(const RepositoryFailure.insufficientPermission());
      } else {
        return onError(const RepositoryFailure.unexpected());
      }
    });
  }
}
