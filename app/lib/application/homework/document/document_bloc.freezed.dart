// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'document_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DocumentEventTearOff {
  const _$DocumentEventTearOff();

// ignore: unused_element
  DocumentPickerShowed documentPickerShowed() {
    return const DocumentPickerShowed();
  }

// ignore: unused_element
  DocumentChoosed documentChoosed(String fileName, File file) {
    return DocumentChoosed(
      fileName,
      file,
    );
  }

// ignore: unused_element
  DocumentUploaded documentUploaded(
      Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument) {
    return DocumentUploaded(
      failureOrDocument,
    );
  }

// ignore: unused_element
  DocumentUncompleted documentUncompleted(double loadingState) {
    return DocumentUncompleted(
      loadingState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DocumentEvent = _$DocumentEventTearOff();

/// @nodoc
mixin _$DocumentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult documentPickerShowed(),
    @required TResult documentChoosed(String fileName, File file),
    @required
        TResult documentUploaded(
            Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    @required TResult documentUncompleted(double loadingState),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult documentPickerShowed(),
    TResult documentChoosed(String fileName, File file),
    TResult documentUploaded(
        Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    TResult documentUncompleted(double loadingState),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult documentPickerShowed(DocumentPickerShowed value),
    @required TResult documentChoosed(DocumentChoosed value),
    @required TResult documentUploaded(DocumentUploaded value),
    @required TResult documentUncompleted(DocumentUncompleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult documentPickerShowed(DocumentPickerShowed value),
    TResult documentChoosed(DocumentChoosed value),
    TResult documentUploaded(DocumentUploaded value),
    TResult documentUncompleted(DocumentUncompleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DocumentEventCopyWith<$Res> {
  factory $DocumentEventCopyWith(
          DocumentEvent value, $Res Function(DocumentEvent) then) =
      _$DocumentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentEventCopyWithImpl<$Res>
    implements $DocumentEventCopyWith<$Res> {
  _$DocumentEventCopyWithImpl(this._value, this._then);

  final DocumentEvent _value;
  // ignore: unused_field
  final $Res Function(DocumentEvent) _then;
}

/// @nodoc
abstract class $DocumentPickerShowedCopyWith<$Res> {
  factory $DocumentPickerShowedCopyWith(DocumentPickerShowed value,
          $Res Function(DocumentPickerShowed) then) =
      _$DocumentPickerShowedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentPickerShowedCopyWithImpl<$Res>
    extends _$DocumentEventCopyWithImpl<$Res>
    implements $DocumentPickerShowedCopyWith<$Res> {
  _$DocumentPickerShowedCopyWithImpl(
      DocumentPickerShowed _value, $Res Function(DocumentPickerShowed) _then)
      : super(_value, (v) => _then(v as DocumentPickerShowed));

  @override
  DocumentPickerShowed get _value => super._value as DocumentPickerShowed;
}

/// @nodoc
class _$DocumentPickerShowed implements DocumentPickerShowed {
  const _$DocumentPickerShowed();

  @override
  String toString() {
    return 'DocumentEvent.documentPickerShowed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DocumentPickerShowed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult documentPickerShowed(),
    @required TResult documentChoosed(String fileName, File file),
    @required
        TResult documentUploaded(
            Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    @required TResult documentUncompleted(double loadingState),
  }) {
    assert(documentPickerShowed != null);
    assert(documentChoosed != null);
    assert(documentUploaded != null);
    assert(documentUncompleted != null);
    return documentPickerShowed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult documentPickerShowed(),
    TResult documentChoosed(String fileName, File file),
    TResult documentUploaded(
        Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    TResult documentUncompleted(double loadingState),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentPickerShowed != null) {
      return documentPickerShowed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult documentPickerShowed(DocumentPickerShowed value),
    @required TResult documentChoosed(DocumentChoosed value),
    @required TResult documentUploaded(DocumentUploaded value),
    @required TResult documentUncompleted(DocumentUncompleted value),
  }) {
    assert(documentPickerShowed != null);
    assert(documentChoosed != null);
    assert(documentUploaded != null);
    assert(documentUncompleted != null);
    return documentPickerShowed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult documentPickerShowed(DocumentPickerShowed value),
    TResult documentChoosed(DocumentChoosed value),
    TResult documentUploaded(DocumentUploaded value),
    TResult documentUncompleted(DocumentUncompleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentPickerShowed != null) {
      return documentPickerShowed(this);
    }
    return orElse();
  }
}

abstract class DocumentPickerShowed implements DocumentEvent {
  const factory DocumentPickerShowed() = _$DocumentPickerShowed;
}

/// @nodoc
abstract class $DocumentChoosedCopyWith<$Res> {
  factory $DocumentChoosedCopyWith(
          DocumentChoosed value, $Res Function(DocumentChoosed) then) =
      _$DocumentChoosedCopyWithImpl<$Res>;
  $Res call({String fileName, File file});
}

/// @nodoc
class _$DocumentChoosedCopyWithImpl<$Res>
    extends _$DocumentEventCopyWithImpl<$Res>
    implements $DocumentChoosedCopyWith<$Res> {
  _$DocumentChoosedCopyWithImpl(
      DocumentChoosed _value, $Res Function(DocumentChoosed) _then)
      : super(_value, (v) => _then(v as DocumentChoosed));

  @override
  DocumentChoosed get _value => super._value as DocumentChoosed;

  @override
  $Res call({
    Object fileName = freezed,
    Object file = freezed,
  }) {
    return _then(DocumentChoosed(
      fileName == freezed ? _value.fileName : fileName as String,
      file == freezed ? _value.file : file as File,
    ));
  }
}

/// @nodoc
class _$DocumentChoosed implements DocumentChoosed {
  const _$DocumentChoosed(this.fileName, this.file)
      : assert(fileName != null),
        assert(file != null);

  @override
  final String fileName;
  @override
  final File file;

  @override
  String toString() {
    return 'DocumentEvent.documentChoosed(fileName: $fileName, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentChoosed &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  $DocumentChoosedCopyWith<DocumentChoosed> get copyWith =>
      _$DocumentChoosedCopyWithImpl<DocumentChoosed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult documentPickerShowed(),
    @required TResult documentChoosed(String fileName, File file),
    @required
        TResult documentUploaded(
            Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    @required TResult documentUncompleted(double loadingState),
  }) {
    assert(documentPickerShowed != null);
    assert(documentChoosed != null);
    assert(documentUploaded != null);
    assert(documentUncompleted != null);
    return documentChoosed(fileName, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult documentPickerShowed(),
    TResult documentChoosed(String fileName, File file),
    TResult documentUploaded(
        Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    TResult documentUncompleted(double loadingState),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentChoosed != null) {
      return documentChoosed(fileName, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult documentPickerShowed(DocumentPickerShowed value),
    @required TResult documentChoosed(DocumentChoosed value),
    @required TResult documentUploaded(DocumentUploaded value),
    @required TResult documentUncompleted(DocumentUncompleted value),
  }) {
    assert(documentPickerShowed != null);
    assert(documentChoosed != null);
    assert(documentUploaded != null);
    assert(documentUncompleted != null);
    return documentChoosed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult documentPickerShowed(DocumentPickerShowed value),
    TResult documentChoosed(DocumentChoosed value),
    TResult documentUploaded(DocumentUploaded value),
    TResult documentUncompleted(DocumentUncompleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentChoosed != null) {
      return documentChoosed(this);
    }
    return orElse();
  }
}

abstract class DocumentChoosed implements DocumentEvent {
  const factory DocumentChoosed(String fileName, File file) = _$DocumentChoosed;

  String get fileName;
  File get file;
  @JsonKey(ignore: true)
  $DocumentChoosedCopyWith<DocumentChoosed> get copyWith;
}

/// @nodoc
abstract class $DocumentUploadedCopyWith<$Res> {
  factory $DocumentUploadedCopyWith(
          DocumentUploaded value, $Res Function(DocumentUploaded) then) =
      _$DocumentUploadedCopyWithImpl<$Res>;
  $Res call({Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument});
}

/// @nodoc
class _$DocumentUploadedCopyWithImpl<$Res>
    extends _$DocumentEventCopyWithImpl<$Res>
    implements $DocumentUploadedCopyWith<$Res> {
  _$DocumentUploadedCopyWithImpl(
      DocumentUploaded _value, $Res Function(DocumentUploaded) _then)
      : super(_value, (v) => _then(v as DocumentUploaded));

  @override
  DocumentUploaded get _value => super._value as DocumentUploaded;

  @override
  $Res call({
    Object failureOrDocument = freezed,
  }) {
    return _then(DocumentUploaded(
      failureOrDocument == freezed
          ? _value.failureOrDocument
          : failureOrDocument as Either<DocumentFailure, DocumentTaskSnapshot>,
    ));
  }
}

/// @nodoc
class _$DocumentUploaded implements DocumentUploaded {
  const _$DocumentUploaded(this.failureOrDocument)
      : assert(failureOrDocument != null);

  @override
  final Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument;

  @override
  String toString() {
    return 'DocumentEvent.documentUploaded(failureOrDocument: $failureOrDocument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentUploaded &&
            (identical(other.failureOrDocument, failureOrDocument) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrDocument, failureOrDocument)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrDocument);

  @JsonKey(ignore: true)
  @override
  $DocumentUploadedCopyWith<DocumentUploaded> get copyWith =>
      _$DocumentUploadedCopyWithImpl<DocumentUploaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult documentPickerShowed(),
    @required TResult documentChoosed(String fileName, File file),
    @required
        TResult documentUploaded(
            Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    @required TResult documentUncompleted(double loadingState),
  }) {
    assert(documentPickerShowed != null);
    assert(documentChoosed != null);
    assert(documentUploaded != null);
    assert(documentUncompleted != null);
    return documentUploaded(failureOrDocument);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult documentPickerShowed(),
    TResult documentChoosed(String fileName, File file),
    TResult documentUploaded(
        Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    TResult documentUncompleted(double loadingState),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentUploaded != null) {
      return documentUploaded(failureOrDocument);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult documentPickerShowed(DocumentPickerShowed value),
    @required TResult documentChoosed(DocumentChoosed value),
    @required TResult documentUploaded(DocumentUploaded value),
    @required TResult documentUncompleted(DocumentUncompleted value),
  }) {
    assert(documentPickerShowed != null);
    assert(documentChoosed != null);
    assert(documentUploaded != null);
    assert(documentUncompleted != null);
    return documentUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult documentPickerShowed(DocumentPickerShowed value),
    TResult documentChoosed(DocumentChoosed value),
    TResult documentUploaded(DocumentUploaded value),
    TResult documentUncompleted(DocumentUncompleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentUploaded != null) {
      return documentUploaded(this);
    }
    return orElse();
  }
}

abstract class DocumentUploaded implements DocumentEvent {
  const factory DocumentUploaded(
          Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument) =
      _$DocumentUploaded;

  Either<DocumentFailure, DocumentTaskSnapshot> get failureOrDocument;
  @JsonKey(ignore: true)
  $DocumentUploadedCopyWith<DocumentUploaded> get copyWith;
}

/// @nodoc
abstract class $DocumentUncompletedCopyWith<$Res> {
  factory $DocumentUncompletedCopyWith(
          DocumentUncompleted value, $Res Function(DocumentUncompleted) then) =
      _$DocumentUncompletedCopyWithImpl<$Res>;
  $Res call({double loadingState});
}

/// @nodoc
class _$DocumentUncompletedCopyWithImpl<$Res>
    extends _$DocumentEventCopyWithImpl<$Res>
    implements $DocumentUncompletedCopyWith<$Res> {
  _$DocumentUncompletedCopyWithImpl(
      DocumentUncompleted _value, $Res Function(DocumentUncompleted) _then)
      : super(_value, (v) => _then(v as DocumentUncompleted));

  @override
  DocumentUncompleted get _value => super._value as DocumentUncompleted;

  @override
  $Res call({
    Object loadingState = freezed,
  }) {
    return _then(DocumentUncompleted(
      loadingState == freezed ? _value.loadingState : loadingState as double,
    ));
  }
}

/// @nodoc
class _$DocumentUncompleted implements DocumentUncompleted {
  const _$DocumentUncompleted(this.loadingState) : assert(loadingState != null);

  @override
  final double loadingState;

  @override
  String toString() {
    return 'DocumentEvent.documentUncompleted(loadingState: $loadingState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentUncompleted &&
            (identical(other.loadingState, loadingState) ||
                const DeepCollectionEquality()
                    .equals(other.loadingState, loadingState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loadingState);

  @JsonKey(ignore: true)
  @override
  $DocumentUncompletedCopyWith<DocumentUncompleted> get copyWith =>
      _$DocumentUncompletedCopyWithImpl<DocumentUncompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult documentPickerShowed(),
    @required TResult documentChoosed(String fileName, File file),
    @required
        TResult documentUploaded(
            Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    @required TResult documentUncompleted(double loadingState),
  }) {
    assert(documentPickerShowed != null);
    assert(documentChoosed != null);
    assert(documentUploaded != null);
    assert(documentUncompleted != null);
    return documentUncompleted(loadingState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult documentPickerShowed(),
    TResult documentChoosed(String fileName, File file),
    TResult documentUploaded(
        Either<DocumentFailure, DocumentTaskSnapshot> failureOrDocument),
    TResult documentUncompleted(double loadingState),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentUncompleted != null) {
      return documentUncompleted(loadingState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult documentPickerShowed(DocumentPickerShowed value),
    @required TResult documentChoosed(DocumentChoosed value),
    @required TResult documentUploaded(DocumentUploaded value),
    @required TResult documentUncompleted(DocumentUncompleted value),
  }) {
    assert(documentPickerShowed != null);
    assert(documentChoosed != null);
    assert(documentUploaded != null);
    assert(documentUncompleted != null);
    return documentUncompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult documentPickerShowed(DocumentPickerShowed value),
    TResult documentChoosed(DocumentChoosed value),
    TResult documentUploaded(DocumentUploaded value),
    TResult documentUncompleted(DocumentUncompleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (documentUncompleted != null) {
      return documentUncompleted(this);
    }
    return orElse();
  }
}

abstract class DocumentUncompleted implements DocumentEvent {
  const factory DocumentUncompleted(double loadingState) =
      _$DocumentUncompleted;

  double get loadingState;
  @JsonKey(ignore: true)
  $DocumentUncompletedCopyWith<DocumentUncompleted> get copyWith;
}

/// @nodoc
class _$DocumentStateTearOff {
  const _$DocumentStateTearOff();

// ignore: unused_element
  _DocumentState call(
      {@required
          String fileName,
      @required
          bool isUploading,
      @required
          double uploadLoadingValue,
      @required
          Option<Either<DocumentFailure, DocumentTaskSnapshot>>
              documentFailureOrSuccessOption}) {
    return _DocumentState(
      fileName: fileName,
      isUploading: isUploading,
      uploadLoadingValue: uploadLoadingValue,
      documentFailureOrSuccessOption: documentFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DocumentState = _$DocumentStateTearOff();

/// @nodoc
mixin _$DocumentState {
  String get fileName;
  bool get isUploading;
  double get uploadLoadingValue;
  Option<Either<DocumentFailure, DocumentTaskSnapshot>>
      get documentFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $DocumentStateCopyWith<DocumentState> get copyWith;
}

/// @nodoc
abstract class $DocumentStateCopyWith<$Res> {
  factory $DocumentStateCopyWith(
          DocumentState value, $Res Function(DocumentState) then) =
      _$DocumentStateCopyWithImpl<$Res>;
  $Res call(
      {String fileName,
      bool isUploading,
      double uploadLoadingValue,
      Option<Either<DocumentFailure, DocumentTaskSnapshot>>
          documentFailureOrSuccessOption});
}

/// @nodoc
class _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentStateCopyWith<$Res> {
  _$DocumentStateCopyWithImpl(this._value, this._then);

  final DocumentState _value;
  // ignore: unused_field
  final $Res Function(DocumentState) _then;

  @override
  $Res call({
    Object fileName = freezed,
    Object isUploading = freezed,
    Object uploadLoadingValue = freezed,
    Object documentFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      isUploading:
          isUploading == freezed ? _value.isUploading : isUploading as bool,
      uploadLoadingValue: uploadLoadingValue == freezed
          ? _value.uploadLoadingValue
          : uploadLoadingValue as double,
      documentFailureOrSuccessOption: documentFailureOrSuccessOption == freezed
          ? _value.documentFailureOrSuccessOption
          : documentFailureOrSuccessOption
              as Option<Either<DocumentFailure, DocumentTaskSnapshot>>,
    ));
  }
}

/// @nodoc
abstract class _$DocumentStateCopyWith<$Res>
    implements $DocumentStateCopyWith<$Res> {
  factory _$DocumentStateCopyWith(
          _DocumentState value, $Res Function(_DocumentState) then) =
      __$DocumentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fileName,
      bool isUploading,
      double uploadLoadingValue,
      Option<Either<DocumentFailure, DocumentTaskSnapshot>>
          documentFailureOrSuccessOption});
}

/// @nodoc
class __$DocumentStateCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res>
    implements _$DocumentStateCopyWith<$Res> {
  __$DocumentStateCopyWithImpl(
      _DocumentState _value, $Res Function(_DocumentState) _then)
      : super(_value, (v) => _then(v as _DocumentState));

  @override
  _DocumentState get _value => super._value as _DocumentState;

  @override
  $Res call({
    Object fileName = freezed,
    Object isUploading = freezed,
    Object uploadLoadingValue = freezed,
    Object documentFailureOrSuccessOption = freezed,
  }) {
    return _then(_DocumentState(
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      isUploading:
          isUploading == freezed ? _value.isUploading : isUploading as bool,
      uploadLoadingValue: uploadLoadingValue == freezed
          ? _value.uploadLoadingValue
          : uploadLoadingValue as double,
      documentFailureOrSuccessOption: documentFailureOrSuccessOption == freezed
          ? _value.documentFailureOrSuccessOption
          : documentFailureOrSuccessOption
              as Option<Either<DocumentFailure, DocumentTaskSnapshot>>,
    ));
  }
}

/// @nodoc
class _$_DocumentState implements _DocumentState {
  const _$_DocumentState(
      {@required this.fileName,
      @required this.isUploading,
      @required this.uploadLoadingValue,
      @required this.documentFailureOrSuccessOption})
      : assert(fileName != null),
        assert(isUploading != null),
        assert(uploadLoadingValue != null),
        assert(documentFailureOrSuccessOption != null);

  @override
  final String fileName;
  @override
  final bool isUploading;
  @override
  final double uploadLoadingValue;
  @override
  final Option<Either<DocumentFailure, DocumentTaskSnapshot>>
      documentFailureOrSuccessOption;

  @override
  String toString() {
    return 'DocumentState(fileName: $fileName, isUploading: $isUploading, uploadLoadingValue: $uploadLoadingValue, documentFailureOrSuccessOption: $documentFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DocumentState &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.isUploading, isUploading) ||
                const DeepCollectionEquality()
                    .equals(other.isUploading, isUploading)) &&
            (identical(other.uploadLoadingValue, uploadLoadingValue) ||
                const DeepCollectionEquality()
                    .equals(other.uploadLoadingValue, uploadLoadingValue)) &&
            (identical(other.documentFailureOrSuccessOption,
                    documentFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.documentFailureOrSuccessOption,
                    documentFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(isUploading) ^
      const DeepCollectionEquality().hash(uploadLoadingValue) ^
      const DeepCollectionEquality().hash(documentFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$DocumentStateCopyWith<_DocumentState> get copyWith =>
      __$DocumentStateCopyWithImpl<_DocumentState>(this, _$identity);
}

abstract class _DocumentState implements DocumentState {
  const factory _DocumentState(
      {@required
          String fileName,
      @required
          bool isUploading,
      @required
          double uploadLoadingValue,
      @required
          Option<Either<DocumentFailure, DocumentTaskSnapshot>>
              documentFailureOrSuccessOption}) = _$_DocumentState;

  @override
  String get fileName;
  @override
  bool get isUploading;
  @override
  double get uploadLoadingValue;
  @override
  Option<Either<DocumentFailure, DocumentTaskSnapshot>>
      get documentFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$DocumentStateCopyWith<_DocumentState> get copyWith;
}
