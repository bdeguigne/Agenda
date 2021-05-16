import 'package:agenda/domain/document/document.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_task_snapshot.freezed.dart';

enum DocumentTaskState {
  running,
  success,
  error,
}

@freezed
abstract class DocumentTaskSnapshot with _$DocumentTaskSnapshot {
  const factory DocumentTaskSnapshot({
    @required DocumentTaskState documentTaskState,
    @required double loadingValue,
    Document document,
  }) = _DocumentTaskSnapshot;

  factory DocumentTaskSnapshot.fromFirestore(TaskSnapshot taskSnapshot) {
    DocumentTaskState documentTaskState;

    if (TaskState.values[taskSnapshot.state.index] == TaskState.running) {
      documentTaskState = DocumentTaskState.running;
    }
    if (TaskState.values[taskSnapshot.state.index] == TaskState.success) {
      documentTaskState = DocumentTaskState.success;
    }
    if (TaskState.values[taskSnapshot.state.index] == TaskState.error) {
      documentTaskState = DocumentTaskState.error;
    }

    return DocumentTaskSnapshot(
      documentTaskState: documentTaskState,
      loadingValue: taskSnapshot.bytesTransferred / taskSnapshot.totalBytes,
    );
  }
}
