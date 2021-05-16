import 'dart:async';
import 'dart:io';

import 'package:agenda/domain/document/document.dart';
import 'package:agenda/domain/document/document_failure.dart';
import 'package:agenda/domain/document/document_task_snapshot.dart';
import 'package:agenda/domain/homework/homework_failure.dart';
import 'package:agenda/domain/homework/i_homework_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'document_event.dart';
part 'document_state.dart';

part 'document_bloc.freezed.dart';

@injectable
class DocumentBloc extends Bloc<DocumentEvent, DocumentState> {
  final IHomeworkRepository _homeworkRepository;

  DocumentBloc(this._homeworkRepository) : super(DocumentState.initial());

  @override
  Stream<DocumentState> mapEventToState(
    DocumentEvent event,
  ) async* {
    yield* event.map(documentPickerShowed: (e) async* {
      final result = await FilePicker.platform.pickFiles();

      if (result != null) {
        final file = File(result.files.first.path);
        final fileName = result.files.first.name;
        add(DocumentEvent.documentChoosed(fileName, file));
      } else {
        yield state.copyWith(
          isUploading: false,
          fileName: "",
          documentFailureOrSuccessOption: some(left(
            const DocumentFailure.canceled(),
          )),
        );
      }
    }, documentChoosed: (e) async* {
      yield state.copyWith(
        isUploading: true,
        fileName: e.fileName,
        documentFailureOrSuccessOption: none(),
      );

      _homeworkRepository
          .uploadDocument(
        e.file,
        e.fileName,
        (failure) => state.copyWith(
          documentFailureOrSuccessOption: some(
            left(failure),
          ),
        ),
      )
          .listen((snapshot) {
        if (DocumentTaskState.values[snapshot.documentTaskState.index] ==
            DocumentTaskState.running) {
          add(DocumentEvent.documentUncompleted(snapshot.loadingValue));
        }
        if (DocumentTaskState.values[snapshot.documentTaskState.index] ==
            DocumentTaskState.success) {
          add(DocumentEvent.documentUploaded(
            right(snapshot),
          ));
        }
        if (DocumentTaskState.values[snapshot.documentTaskState.index] ==
            DocumentTaskState.error) {
          add(DocumentEvent.documentUploaded(
            left(const DocumentFailure.unexpected()),
          ));
        }
      });
    }, documentUploaded: (e) async* {
      yield e.failureOrDocument.fold(
        (failure) => state.copyWith(
          isUploading: false,
          documentFailureOrSuccessOption: some(
            left(failure),
          ),
        ),
        (snapshot) => state.copyWith(
          isUploading: false,
          documentFailureOrSuccessOption: some(
            right(snapshot),
          ),
        ),
      );
    }, documentUncompleted: (e) async* {
      yield state.copyWith(
        uploadLoadingValue: e.loadingState,
        documentFailureOrSuccessOption: none(),
      );
    });
  }
}
