// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeworkTearOff {
  const _$HomeworkTearOff();

// ignore: unused_element
  _Homework call({@required UniqueId id, @required String name}) {
    return _Homework(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Homework = _$HomeworkTearOff();

/// @nodoc
mixin _$Homework {
  UniqueId
      get id; // TODO Change homework name type by a value object for verification (max title length)
  String get name;

  @JsonKey(ignore: true)
  $HomeworkCopyWith<Homework> get copyWith;
}

/// @nodoc
abstract class $HomeworkCopyWith<$Res> {
  factory $HomeworkCopyWith(Homework value, $Res Function(Homework) then) =
      _$HomeworkCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name});
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
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeworkCopyWith<$Res> implements $HomeworkCopyWith<$Res> {
  factory _$HomeworkCopyWith(_Homework value, $Res Function(_Homework) then) =
      __$HomeworkCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name});
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
    Object name = freezed,
  }) {
    return _then(_Homework(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_Homework implements _Homework {
  const _$_Homework({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null);

  @override
  final UniqueId id;
  @override // TODO Change homework name type by a value object for verification (max title length)
  final String name;

  @override
  String toString() {
    return 'Homework(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Homework &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$HomeworkCopyWith<_Homework> get copyWith =>
      __$HomeworkCopyWithImpl<_Homework>(this, _$identity);
}

abstract class _Homework implements Homework {
  const factory _Homework({@required UniqueId id, @required String name}) =
      _$_Homework;

  @override
  UniqueId get id;
  @override // TODO Change homework name type by a value object for verification (max title length)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$HomeworkCopyWith<_Homework> get copyWith;
}
