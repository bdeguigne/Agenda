import 'package:agenda/domain/homework/homework.dart';
import 'package:agenda/domain/homework/homework_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeworkRepository {
  // Stream<Either<HomeworkFailure, List<Homework>>> watchAll();
  // Stream<Either<HomeworkFailure, List<Homework>>> watchUncompleted();
  Future<Either<HomeworkFailure, Unit>> create(Homework homework);
  // Future<Either<HomeworkFailure, Unit>> update(Homework note);
  // Future<Either<HomeworkFailure, Unit>> delete(Homework note);
}
