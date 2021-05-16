part of 'document_bloc.dart';

@freezed
abstract class DocumentState with _$DocumentState {
  const factory DocumentState({
    @required String fileName,
    @required bool isUploading,
    @required double uploadLoadingValue,
    @required
        Option<Either<DocumentFailure, DocumentTaskSnapshot>>
            documentFailureOrSuccessOption,
  }) = _DocumentState;

  factory DocumentState.initial() => DocumentState(
        fileName: "",
        isUploading: false,
        uploadLoadingValue: 0.0,
        documentFailureOrSuccessOption: none(),
      );
}
