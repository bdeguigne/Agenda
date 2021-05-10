import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/roles/role.dart';
import 'package:dartz/dartz.dart';

abstract class IRolesRepository {
  Stream<List<Role>> watchAll(Function(RepositoryFailure failure) onError);
  // Future<Either<UserFailure, Unit>> create(User note);
  Future<Either<RepositoryFailure, Unit>> update(Role role);
  // Future<Either<UserFailure, Unit>> delete(User note);
}
