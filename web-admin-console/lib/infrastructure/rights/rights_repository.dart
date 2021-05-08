import 'package:agenda/domain/collection_right/i_rights_repository.dart';
import 'package:agenda/domain/core/repository_failure.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import 'package:agenda/domain/collection_right/right.dart';

@LazySingleton(as: IRightsRepository)
class RightsRepository implements IRightsRepository {
  final FirebaseFirestore _firebaseFirestore;

  RightsRepository(this._firebaseFirestore);

  @override
  Stream<List<CollectionRight>> watchAll(
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
        return onError(const RepositoryFailure.unexpected());
      }
    });
  }
}
