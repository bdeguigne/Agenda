// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Document _$DocumentFromJson(Map<String, dynamic> json) {
  return _Document.fromJson(json);
}

/// @nodoc
class _$DocumentTearOff {
  const _$DocumentTearOff();

// ignore: unused_element
  _Document call(
      {@JsonKey(ignore: true) UniqueId id,
      @required String fileName,
      @JsonKey(ignore: true) File file,
      String storagePath}) {
    return _Document(
      id: id,
      fileName: fileName,
      file: file,
      storagePath: storagePath,
    );
  }

// ignore: unused_element
  Document fromJson(Map<String, Object> json) {
    return Document.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Document = _$DocumentTearOff();

/// @nodoc
mixin _$Document {
  @JsonKey(ignore: true)
  UniqueId get id;
  String get fileName;
  @JsonKey(ignore: true)
  File get file;
  String get storagePath;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DocumentCopyWith<Document> get copyWith;
}

/// @nodoc
abstract class $DocumentCopyWith<$Res> {
  factory $DocumentCopyWith(Document value, $Res Function(Document) then) =
      _$DocumentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) UniqueId id,
      String fileName,
      @JsonKey(ignore: true) File file,
      String storagePath});
}

/// @nodoc
class _$DocumentCopyWithImpl<$Res> implements $DocumentCopyWith<$Res> {
  _$DocumentCopyWithImpl(this._value, this._then);

  final Document _value;
  // ignore: unused_field
  final $Res Function(Document) _then;

  @override
  $Res call({
    Object id = freezed,
    Object fileName = freezed,
    Object file = freezed,
    Object storagePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      file: file == freezed ? _value.file : file as File,
      storagePath:
          storagePath == freezed ? _value.storagePath : storagePath as String,
    ));
  }
}

/// @nodoc
abstract class _$DocumentCopyWith<$Res> implements $DocumentCopyWith<$Res> {
  factory _$DocumentCopyWith(_Document value, $Res Function(_Document) then) =
      __$DocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) UniqueId id,
      String fileName,
      @JsonKey(ignore: true) File file,
      String storagePath});
}

/// @nodoc
class __$DocumentCopyWithImpl<$Res> extends _$DocumentCopyWithImpl<$Res>
    implements _$DocumentCopyWith<$Res> {
  __$DocumentCopyWithImpl(_Document _value, $Res Function(_Document) _then)
      : super(_value, (v) => _then(v as _Document));

  @override
  _Document get _value => super._value as _Document;

  @override
  $Res call({
    Object id = freezed,
    Object fileName = freezed,
    Object file = freezed,
    Object storagePath = freezed,
  }) {
    return _then(_Document(
      id: id == freezed ? _value.id : id as UniqueId,
      fileName: fileName == freezed ? _value.fileName : fileName as String,
      file: file == freezed ? _value.file : file as File,
      storagePath:
          storagePath == freezed ? _value.storagePath : storagePath as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Document extends _Document {
  _$_Document(
      {@JsonKey(ignore: true) this.id,
      @required this.fileName,
      @JsonKey(ignore: true) this.file,
      this.storagePath})
      : assert(fileName != null),
        super._();

  factory _$_Document.fromJson(Map<String, dynamic> json) =>
      _$_$_DocumentFromJson(json);

  @override
  @JsonKey(ignore: true)
  final UniqueId id;
  @override
  final String fileName;
  @override
  @JsonKey(ignore: true)
  final File file;
  @override
  final String storagePath;

  @override
  String toString() {
    return 'Document(id: $id, fileName: $fileName, file: $file, storagePath: $storagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Document &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.storagePath, storagePath) ||
                const DeepCollectionEquality()
                    .equals(other.storagePath, storagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(storagePath);

  @JsonKey(ignore: true)
  @override
  _$DocumentCopyWith<_Document> get copyWith =>
      __$DocumentCopyWithImpl<_Document>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DocumentToJson(this);
  }
}

abstract class _Document extends Document {
  _Document._() : super._();
  factory _Document(
      {@JsonKey(ignore: true) UniqueId id,
      @required String fileName,
      @JsonKey(ignore: true) File file,
      String storagePath}) = _$_Document;

  factory _Document.fromJson(Map<String, dynamic> json) = _$_Document.fromJson;

  @override
  @JsonKey(ignore: true)
  UniqueId get id;
  @override
  String get fileName;
  @override
  @JsonKey(ignore: true)
  File get file;
  @override
  String get storagePath;
  @override
  @JsonKey(ignore: true)
  _$DocumentCopyWith<_Document> get copyWith;
}
