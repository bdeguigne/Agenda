import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/core/repository_failure.dart';
import 'package:agenda/domain/core/value_object.dart';
import 'package:dartz/dartz.dart';

abstract class IUsersRepository {
  Stream<List<User>> watchAll(Function(RepositoryFailure failure) onError);
  // Future<Either<UserFailure, Unit>> create(User note);
  Future<Either<RepositoryFailure, Unit>> update(
      Map<String, dynamic> data, UniqueId userId);
  // Future<Either<UserFailure, Unit>> delete(User note);
}
