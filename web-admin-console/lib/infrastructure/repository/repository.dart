import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/roles/roles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'package:agenda/domain/collection_right/i_repository.dart';
import 'package:agenda/domain/collection_right/right.dart';

@LazySingleton(as: IRepository)
class Repository implements IRepository {
  final FirebaseFirestore _firebaseFirestore;

  Repository(this._firebaseFirestore);

  @override
  Stream<List<CollectionRight>> watchAllCollectionRight(
      Function(RepositoryFailure failure) onError) async* {
    yield* _firebaseFirestore.collection("rights").snapshots().map(
      (snapshot) {
        return snapshot.docs
            .map((doc) => CollectionRight.fromFirestore(doc))
            .toList();
      },
    ).handleError((e) {
      if (e is FirebaseException && e.code == "permission-denied") {
        return onError(const RepositoryFailure.insufficientPermission());
      } else {
        return onError(const RepositoryFailure.unexptected());
      }
    });
  }

  @override
  Stream<List<Roles>> watchAllRoles(
      Function(RepositoryFailure failure) onError) async* {
    print("WATCH ALL ROLES");
    yield* _firebaseFirestore.collection("roles").snapshots().map(
      (snapshot) {
        return snapshot.docs.map((doc) => Roles.fromFirestore(doc)).toList();
      },
    ).handleError((e) {
      if (e is FirebaseException && e.code == "permission-denied") {
        return onError(const RepositoryFailure.insufficientPermission());
      } else {
        return onError(const RepositoryFailure.unexptected());
      }
    });
  }
}
