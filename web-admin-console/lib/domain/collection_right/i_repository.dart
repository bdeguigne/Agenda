import 'package:agenda/domain/collection_right/right.dart';
import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/roles/roles.dart';

abstract class IRepository {
  Stream<List<CollectionRight>> watchAllCollectionRight(
      Function(RepositoryFailure) onError);
  Stream<List<Roles>> watchAllRoles(Function(RepositoryFailure) onError);
  // Future<Either<UserFailure, Unit>> create(User note);
  // Future<Either<UserFailure, Unit>> update(User note);
  // Future<Either<UserFailure, Unit>> delete(User note);
}
