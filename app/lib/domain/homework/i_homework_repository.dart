import 'dart:io';

import 'package:agenda/domain/document/document.dart';
import 'package:agenda/domain/document/document_failure.dart';
import 'package:agenda/domain/document/document_task_snapshot.dart';
import 'package:agenda/domain/homework/homework.dart';
import 'package:agenda/domain/homework/homework_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeworkRepository {
  Stream<List<Homework>> watchAll(Function(HomeworkFailure failure) onError);
  Stream<DocumentTaskSnapshot> uploadDocument(
      File file, String fileName, Function(DocumentFailure) onError);
  Future<Either<HomeworkFailure, Unit>> create(
    String title,
    String description,
    DateTime deliveryDate,
    List<Document> homeworkDocuments,
  );
  // Stream<Either<HomeworkFailure, List<Homework>>> watchAll();
  // Stream<Either<HomeworkFailure, List<Homework>>> watchUncompleted();
  // Future<Either<HomeworkFailure, Unit>> update(Homework note);
  // Future<Either<HomeworkFailure, Unit>> delete(Homework note);
}
