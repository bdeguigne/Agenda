import 'package:agenda/domain/auth/user.dart';
import 'package:agenda/domain/users/user_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IUsersRepository {
  Stream<List<User>> watchAll(Function(UserFailure) onError);
  void testEvent();
  // Future<Either<UserFailure, Unit>> create(User note);
  // Future<Either<UserFailure, Unit>> update(User note);
  // Future<Either<UserFailure, Unit>> delete(User note);
}
