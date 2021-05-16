// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Homework _$HomeworkFromJson(Map<String, dynamic> json) {
  return _Homework.fromJson(json);
}

/// @nodoc
class _$HomeworkTearOff {
  const _$HomeworkTearOff();

// ignore: unused_element
  _Homework call(
      {@JsonKey(ignore: true) UniqueId id,
      @required String title,
      @required String subject,
      @required String description,
      @required DateTime deliveryDate,
      @required List<Document> homeworkDocuments}) {
    return _Homework(
      id: id,
      title: title,
      subject: subject,
      description: description,
      deliveryDate: deliveryDate,
      homeworkDocuments: homeworkDocuments,
    );
  }

// ignore: unused_element
  Homework fromJson(Map<String, Object> json) {
    return Homework.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Homework = _$HomeworkTearOff();

/// @nodoc
mixin _$Homework {
  @JsonKey(ignore: true)
  UniqueId get id;
  String get title;
  String get subject;
  String get description;
  DateTime get deliveryDate;
  List<Document> get homeworkDocuments;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HomeworkCopyWith<Homework> get copyWith;
}

/// @nodoc
abstract class $HomeworkCopyWith<$Res> {
  factory $HomeworkCopyWith(Homework value, $Res Function(Homework) then) =
      _$HomeworkCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) UniqueId id,
      String title,
      String subject,
      String description,
      DateTime deliveryDate,
      List<Document> homeworkDocuments});
}

/// @nodoc
class _$HomeworkCopyWithImpl<$Res> implements $HomeworkCopyWith<$Res> {
  _$HomeworkCopyWithImpl(this._value, this._then);

  final Homework _value;
  // ignore: unused_field
  final $Res Function(Homework) _then;

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
      id: id == freezed ? _value.id : id as UniqueId,
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
abstract class _$HomeworkCopyWith<$Res> implements $HomeworkCopyWith<$Res> {
  factory _$HomeworkCopyWith(_Homework value, $Res Function(_Homework) then) =
      __$HomeworkCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) UniqueId id,
      String title,
      String subject,
      String description,
      DateTime deliveryDate,
      List<Document> homeworkDocuments});
}

/// @nodoc
class __$HomeworkCopyWithImpl<$Res> extends _$HomeworkCopyWithImpl<$Res>
    implements _$HomeworkCopyWith<$Res> {
  __$HomeworkCopyWithImpl(_Homework _value, $Res Function(_Homework) _then)
      : super(_value, (v) => _then(v as _Homework));

  @override
  _Homework get _value => super._value as _Homework;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object subject = freezed,
    Object description = freezed,
    Object deliveryDate = freezed,
    Object homeworkDocuments = freezed,
  }) {
    return _then(_Homework(
      id: id == freezed ? _value.id : id as UniqueId,
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
class _$_Homework extends _Homework {
  const _$_Homework(
      {@JsonKey(ignore: true) this.id,
      @required this.title,
      @required this.subject,
      @required this.description,
      @required this.deliveryDate,
      @required this.homeworkDocuments})
      : assert(title != null),
        assert(subject != null),
        assert(description != null),
        assert(deliveryDate != null),
        assert(homeworkDocuments != null),
        super._();

  factory _$_Homework.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeworkFromJson(json);

  @override
  @JsonKey(ignore: true)
  final UniqueId id;
  @override
  final String title;
  @override
  final String subject;
  @override
  final String description;
  @override
  final DateTime deliveryDate;
  @override
  final List<Document> homeworkDocuments;

  @override
  String toString() {
    return 'Homework(id: $id, title: $title, subject: $subject, description: $description, deliveryDate: $deliveryDate, homeworkDocuments: $homeworkDocuments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Homework &&
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
  _$HomeworkCopyWith<_Homework> get copyWith =>
      __$HomeworkCopyWithImpl<_Homework>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeworkToJson(this);
  }
}

abstract class _Homework extends Homework {
  const _Homework._() : super._();
  const factory _Homework(
      {@JsonKey(ignore: true) UniqueId id,
      @required String title,
      @required String subject,
      @required String description,
      @required DateTime deliveryDate,
      @required List<Document> homeworkDocuments}) = _$_Homework;

  factory _Homework.fromJson(Map<String, dynamic> json) = _$_Homework.fromJson;

  @override
  @JsonKey(ignore: true)
  UniqueId get id;
  @override
  String get title;
  @override
  String get subject;
  @override
  String get description;
  @override
  DateTime get deliveryDate;
  @override
  List<Document> get homeworkDocuments;
  @override
  @JsonKey(ignore: true)
  _$HomeworkCopyWith<_Homework> get copyWith;
}
