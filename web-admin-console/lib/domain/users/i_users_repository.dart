import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/core/repository_failure.dart';

abstract class IUsersRepository {
  Stream<List<User>> watchAll(Function(RepositoryFailure failure) onError);
  // Future<Either<UserFailure, Unit>> create(User note);
  // Future<Either<UserFailure, Unit>> update(User note);
  // Future<Either<UserFailure, Unit>> delete(User note);
}
