import 'dart:io';

import 'package:agenda/domain/core/value_object.dart';
import 'package:agenda/domain/document/document.dart';
import 'package:agenda/domain/document/document_failure.dart';
import 'package:agenda/domain/document/document_task_snapshot.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:agenda/domain/homework/homework.dart';
import 'package:agenda/domain/homework/homework_failure.dart';
import 'package:agenda/domain/homework/i_homework_repository.dart';

@LazySingleton(as: IHomeworkRepository)
class HomeworkRepository implements IHomeworkRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  HomeworkRepository(this._firebaseFirestore, this._firebaseStorage);

  @override
  Stream<DocumentTaskSnapshot> uploadDocument(
      File file, String fileName, Function(DocumentFailure) onError) async* {
    final Document document = Document.fromFile(file, fileName);
    final storageFilePath =
        "documents/homework/${document.fileName}-${document.id.getOrCrash()}";

    final task = _firebaseStorage.ref(storageFilePath).putFile(document.file);

    yield* task.snapshotEvents
        .map(
      (taskSnapshot) =>
          DocumentTaskSnapshot.fromFirestore(taskSnapshot).copyWith(
        document: document.copyWith(storagePath: storageFilePath),
      ),
    )
        .handleError((e) {
      if (e is FirebaseException && e.code == "permission-denied") {
        return onError(const DocumentFailure.insufficientPermission());
      } else {
        return onError(const DocumentFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<HomeworkFailure, Unit>> create(
    String title,
    String description,
    DateTime deliveryDate,
    List<Document> homeworkDocuments,
  ) async {
    try {
      final Homework homework = Homework(
        id: UniqueId(),
        title: title,
        // TODO Add subject
        subject: "subject",
        description: description,
        deliveryDate: deliveryDate,
        homeworkDocuments: homeworkDocuments,
      );

      // if (homework.homeworkDocument.isSome()) {
      //   final Document homeworkDocument =
      //       homework.homeworkDocument.fold(() => null, id);

      //   final storageFile = await _firebaseStorage
      //       .ref("/documents/${homeworkDocument.fileName}")
      //       .putFile(homeworkDocument.file);
      // }
      await _firebaseFirestore
          .collection("homeworks")
          .doc()
          .set(homework.toJson());

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
  Stream<List<Homework>> watchAll(Function(HomeworkFailure failure) onError) {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  // @override
  // Future<Either<HomeworkFailure, Unit>> getAll() async {
  //   try {
  //     final doc = await _firebaseFirestore.collection("homeworks").get();

  //     final homeworkList = doc.docs.toList();

  //     homeworkList.forEach((element) {
  //       print("Homework : ${element.data()}");
  //     });

  //     return right(unit);
  //   } on FirebaseException catch (e) {
  //     if (e.code == "permission-denied") {
  //       return left(const HomeworkFailure.insufficientPermission());
  //     } else {
  //       return left(const HomeworkFailure.unexpected());
  //     }
  //   }
  // }

  // @override
  // Future<Either<HomeworkFailure, Unit>> getAllUsers() async {
  //   try {
  //     final doc = await _firebaseFirestore.collection("users").get();

  //     final usersList = doc.docs.toList();

  //     usersList.forEach((element) {
  //       print("User : ${element.data()}");
  //     });

  //     return right(unit);
  //   } on FirebaseException catch (e) {
  //     if (e.code == "permission-denied") {
  //       return left(const HomeworkFailure.insufficientPermission());
  //     } else {
  //       return left(const HomeworkFailure.unexpected());
  //     }
  //   }
  // }
}
