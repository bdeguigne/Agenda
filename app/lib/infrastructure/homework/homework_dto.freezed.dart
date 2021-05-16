// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'homework_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HomeworkDto _$HomeworkDtoFromJson(Map<String, dynamic> json) {
  return _HomeworkDto.fromJson(json);
}

/// @nodoc
class _$HomeworkDtoTearOff {
  const _$HomeworkDtoTearOff();

// ignore: unused_element
  _HomeworkDto call(
      {@JsonKey(ignore: true) String id,
      @required String title,
      @required String subject,
      @required String description,
      @required @TimestampConverter() DateTime deliveryDate,
      @required List<Document> homeworkDocuments}) {
    return _HomeworkDto(
      id: id,
      title: title,
      subject: subject,
      description: description,
      deliveryDate: deliveryDate,
      homeworkDocuments: homeworkDocuments,
    );
  }

// ignore: unused_element
  HomeworkDto fromJson(Map<String, Object> json) {
    return HomeworkDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HomeworkDto = _$HomeworkDtoTearOff();

/// @nodoc
mixin _$HomeworkDto {
  @JsonKey(ignore: true)
  String get id;
  String get title;
  String get subject;
  String get description;
  @TimestampConverter()
  DateTime get deliveryDate;
  List<Document> get homeworkDocuments;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HomeworkDtoCopyWith<HomeworkDto> get copyWith;
}

/// @nodoc
abstract class $HomeworkDtoCopyWith<$Res> {
  factory $HomeworkDtoCopyWith(
          HomeworkDto value, $Res Function(HomeworkDto) then) =
      _$HomeworkDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      String subject,
      String description,
      @TimestampConverter() DateTime deliveryDate,
      List<Document> homeworkDocuments});
}

/// @nodoc
class _$HomeworkDtoCopyWithImpl<$Res> implements $HomeworkDtoCopyWith<$Res> {
  _$HomeworkDtoCopyWithImpl(this._value, this._then);

  final HomeworkDto _value;
  // ignore: unused_field
  final $Res Function(HomeworkDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subject = freezed,
    Object description = freezed,
    Object deliveryDate = freezed,
    Object homeworkDocuments = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      subject: subject == freezed ? _value.subject : subject as String,
      description:
          description == freezed ? _value.description : description as String,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate as DateTime,
      homeworkDocuments: homeworkDocuments == freezed
          ? _value.homeworkDocuments
          : homeworkDocuments as List<Document>,
    ));
  }
}

/// @nodoc
abstract class _$HomeworkDtoCopyWith<$Res>
    implements $HomeworkDtoCopyWith<$Res> {
  factory _$HomeworkDtoCopyWith(
          _HomeworkDto value, $Res Function(_HomeworkDto) then) =
      __$HomeworkDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      String subject,
      String description,
      @TimestampConverter() DateTime deliveryDate,
      List<Document> homeworkDocuments});
}

/// @nodoc
class __$HomeworkDtoCopyWithImpl<$Res> extends _$HomeworkDtoCopyWithImpl<$Res>
    implements _$HomeworkDtoCopyWith<$Res> {
  __$HomeworkDtoCopyWithImpl(
      _HomeworkDto _value, $Res Function(_HomeworkDto) _then)
      : super(_value, (v) => _then(v as _HomeworkDto));

  @override
  _HomeworkDto get _value => super._value as _HomeworkDto;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subject = freezed,
    Object description = freezed,
    Object deliveryDate = freezed,
    Object homeworkDocuments = freezed,
  }) {
    return _then(_HomeworkDto(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      subject: subject == freezed ? _value.subject : subject as String,
      description:
          description == freezed ? _value.description : description as String,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate as DateTime,
      homeworkDocuments: homeworkDocuments == freezed
          ? _value.homeworkDocuments
          : homeworkDocuments as List<Document>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_HomeworkDto extends _HomeworkDto {
  const _$_HomeworkDto(
      {@JsonKey(ignore: true) this.id,
      @required this.title,
      @required this.subject,
      @required this.description,
      @required @TimestampConverter() this.deliveryDate,
      @required this.homeworkDocuments})
      : assert(title != null),
        assert(subject != null),
        assert(description != null),
        assert(deliveryDate != null),
        assert(homeworkDocuments != null),
        super._();

  factory _$_HomeworkDto.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeworkDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String title;
  @override
  final String subject;
  @override
  final String description;
  @override
  @TimestampConverter()
  final DateTime deliveryDate;
  @override
  final List<Document> homeworkDocuments;

  @override
  String toString() {
    return 'HomeworkDto(id: $id, title: $title, subject: $subject, description: $description, deliveryDate: $deliveryDate, homeworkDocuments: $homeworkDocuments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeworkDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.deliveryDate, deliveryDate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryDate, deliveryDate)) &&
            (identical(other.homeworkDocuments, homeworkDocuments) ||
                const DeepCollectionEquality()
                    .equals(other.homeworkDocuments, homeworkDocuments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(deliveryDate) ^
      const DeepCollectionEquality().hash(homeworkDocuments);

  @JsonKey(ignore: true)
  @override
  _$HomeworkDtoCopyWith<_HomeworkDto> get copyWith =>
      __$HomeworkDtoCopyWithImpl<_HomeworkDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeworkDtoToJson(this);
  }
}

abstract class _HomeworkDto extends HomeworkDto {
  const _HomeworkDto._() : super._();
  const factory _HomeworkDto(
      {@JsonKey(ignore: true) String id,
      @required String title,
      @required String subject,
      @required String description,
      @required @TimestampConverter() DateTime deliveryDate,
      @required List<Document> homeworkDocuments}) = _$_HomeworkDto;

  factory _HomeworkDto.fromJson(Map<String, dynamic> json) =
      _$_HomeworkDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get title;
  @override
  String get subject;
  @override
  String get description;
  @override
  @TimestampConverter()
  DateTime get deliveryDate;
  @override
  List<Document> get homeworkDocuments;
  @override
  @JsonKey(ignore: true)
  _$HomeworkDtoCopyWith<_HomeworkDto> get copyWith;
}
