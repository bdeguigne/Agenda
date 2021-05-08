import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/roles/roles.dart';

abstract class IRolesRepository {
  Stream<List<Roles>> watchAll(Function(RepositoryFailure failure) onError);
  // Future<Either<UserFailure, Unit>> create(User note);
  // Future<Either<UserFailure, Unit>> update(User note);
  // Future<Either<UserFailure, Unit>> delete(User note);
}
