part of 'document_bloc.dart';

@freezed
abstract class DocumentEvent with _$DocumentEvent {
  const factory DocumentEvent.documentPickerShowed() = DocumentPickerShowed;
  const factory DocumentEvent.documentChoosed(String fileName, File file) =
      DocumentChoosed;
  const factory DocumentEvent.documentUploaded(
          Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument) =
      DocumentUploaded;
  const factory DocumentEvent.documentUncompleted(double loadingState) =
      DocumentUncompleted;
}
