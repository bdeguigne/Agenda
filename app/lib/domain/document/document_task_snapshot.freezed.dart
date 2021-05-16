// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'document_task_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DocumentTaskSnapshotTearOff {
  const _$DocumentTaskSnapshotTearOff();

// ignore: unused_element
  _DocumentTaskSnapshot call(
      {@required DocumentTaskState documentTaskState,
      @required double loadingValue,
      Document document}) {
    return _DocumentTaskSnapshot(
      documentTaskState: documentTaskState,
      loadingValue: loadingValue,
      document: document,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DocumentTaskSnapshot = _$DocumentTaskSnapshotTearOff();

/// @nodoc
mixin _$DocumentTaskSnapshot {
  DocumentTaskState get documentTaskState;
  double get loadingValue;
  Document get document;

  @JsonKey(ignore: true)
  $DocumentTaskSnapshotCopyWith<DocumentTaskSnapshot> get copyWith;
}

/// @nodoc
abstract class $DocumentTaskSnapshotCopyWith<$Res> {
  factory $DocumentTaskSnapshotCopyWith(DocumentTaskSnapshot value,
          $Res Function(DocumentTaskSnapshot) then) =
      _$DocumentTaskSnapshotCopyWithImpl<$Res>;
  $Res call(
      {DocumentTaskState documentTaskState,
      double loadingValue,
      Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$DocumentTaskSnapshotCopyWithImpl<$Res>
    implements $DocumentTaskSnapshotCopyWith<$Res> {
  _$DocumentTaskSnapshotCopyWithImpl(this._value, this._then);

  final DocumentTaskSnapshot _value;
  // ignore: unused_field
  final $Res Function(DocumentTaskSnapshot) _then;

  @override
  $Res call({
    Object documentTaskState = freezed,
    Object loadingValue = freezed,
    Object document = freezed,
  }) {
    return _then(_value.copyWith(
      documentTaskState: documentTaskState == freezed
          ? _value.documentTaskState
          : documentTaskState as DocumentTaskState,
      loadingValue: loadingValue == freezed
          ? _value.loadingValue
          : loadingValue as double,
      document: document == freezed ? _value.document : document as Document,
    ));
  }

  @override
  $DocumentCopyWith<$Res> get document {
    if (_value.document == null) {
      return null;
    }
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value));
    });
  }
}

/// @nodoc
abstract class _$DocumentTaskSnapshotCopyWith<$Res>
    implements $DocumentTaskSnapshotCopyWith<$Res> {
  factory _$DocumentTaskSnapshotCopyWith(_DocumentTaskSnapshot value,
          $Res Function(_DocumentTaskSnapshot) then) =
      __$DocumentTaskSnapshotCopyWithImpl<$Res>;
  @override
  $Res call(
      {DocumentTaskState documentTaskState,
      double loadingValue,
      Document document});

  @override
  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$DocumentTaskSnapshotCopyWithImpl<$Res>
    extends _$DocumentTaskSnapshotCopyWithImpl<$Res>
    implements _$DocumentTaskSnapshotCopyWith<$Res> {
  __$DocumentTaskSnapshotCopyWithImpl(
      _DocumentTaskSnapshot _value, $Res Function(_DocumentTaskSnapshot) _then)
      : super(_value, (v) => _then(v as _DocumentTaskSnapshot));

  @override
  _DocumentTaskSnapshot get _value => super._value as _DocumentTaskSnapshot;

  @override
  $Res call({
    Object documentTaskState = freezed,
    Object loadingValue = freezed,
    Object document = freezed,
  }) {
    return _then(_DocumentTaskSnapshot(
      documentTaskState: documentTaskState == freezed
          ? _value.documentTaskState
          : documentTaskState as DocumentTaskState,
      loadingValue: loadingValue == freezed
          ? _value.loadingValue
          : loadingValue as double,
      document: document == freezed ? _value.document : document as Document,
    ));
  }
}

/// @nodoc
class _$_DocumentTaskSnapshot implements _DocumentTaskSnapshot {
  const _$_DocumentTaskSnapshot(
      {@required this.documentTaskState,
      @required this.loadingValue,
      this.document})
      : assert(documentTaskState != null),
        assert(loadingValue != null);

  @override
  final DocumentTaskState documentTaskState;
  @override
  final double loadingValue;
  @override
  final Document document;

  @override
  String toString() {
    return 'DocumentTaskSnapshot(documentTaskState: $documentTaskState, loadingValue: $loadingValue, document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DocumentTaskSnapshot &&
            (identical(other.documentTaskState, documentTaskState) ||
                const DeepCollectionEquality()
                    .equals(other.documentTaskState, documentTaskState)) &&
            (identical(other.loadingValue, loadingValue) ||
                const DeepCollectionEquality()
                    .equals(other.loadingValue, loadingValue)) &&
            (identical(other.document, document) ||
                const DeepCollectionEquality()
                    .equals(other.document, document)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(documentTaskState) ^
      const DeepCollectionEquality().hash(loadingValue) ^
      const DeepCollectionEquality().hash(document);

  @JsonKey(ignore: true)
  @override
  _$DocumentTaskSnapshotCopyWith<_DocumentTaskSnapshot> get copyWith =>
      __$DocumentTaskSnapshotCopyWithImpl<_DocumentTaskSnapshot>(
          this, _$identity);
}

abstract class _DocumentTaskSnapshot implements DocumentTaskSnapshot {
  const factory _DocumentTaskSnapshot(
      {@required DocumentTaskState documentTaskState,
      @required double loadingValue,
      Document document}) = _$_DocumentTaskSnapshot;

  @override
  DocumentTaskState get documentTaskState;
  @override
  double get loadingValue;
  @override
  Document get document;
  @override
  @JsonKey(ignore: true)
  _$DocumentTaskSnapshotCopyWith<_DocumentTaskSnapshot> get copyWith;
}
