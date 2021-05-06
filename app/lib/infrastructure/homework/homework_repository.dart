import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:agenda/domain/homework/homework.dart';
import 'package:agenda/domain/homework/homework_failure.dart';
import 'package:agenda/domain/homework/i_homework_repository.dart';

@LazySingleton(as: IHomeworkRepository)
class HomeworkRepository implements IHomeworkRepository {
  final FirebaseFirestore _firebaseFirestore;

  HomeworkRepository(this._firebaseFirestore);

  @override
  Future<Either<HomeworkFailure, Unit>> create(Homework homework) async {
    try {
      await _firebaseFirestore.collection("homeworks").doc().set({
        "subject": "science",
        "description": "a science work",
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == "permission-denied") {
        return left(const HomeworkFailure.insufficientPermission());
      } else {
        return left(const HomeworkFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<HomeworkFailure, Unit>> getAll() async {
    try {
      final doc = await _firebaseFirestore.collection("homeworks").get();

      final homeworkList = doc.docs.toList();

      homeworkList.forEach((element) {
        print("Homework : ${element.data()}");
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == "permission-denied") {
        return left(const HomeworkFailure.insufficientPermission());
      } else {
        return left(const HomeworkFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<HomeworkFailure, Unit>> getAllUsers() async {
    try {
      final doc = await _firebaseFirestore.collection("users").get();

      final usersList = doc.docs.toList();

      usersList.forEach((element) {
        print("User : ${element.data()}");
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == "permission-denied") {
        return left(const HomeworkFailure.insufficientPermission());
      } else {
        return left(const HomeworkFailure.unexpected());
      }
    }
  }
}
