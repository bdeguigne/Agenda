// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'right.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CollectionRight _$CollectionRightFromJson(Map<String, dynamic> json) {
  return _CollectionRight.fromJson(json);
}

/// @nodoc
class _$CollectionRightTearOff {
  const _$CollectionRightTearOff();

// ignore: unused_element
  _CollectionRight call(
      {@required String collection, @required List<Right> rights}) {
    return _CollectionRight(
      collection: collection,
      rights: rights,
    );
  }

// ignore: unused_element
  CollectionRight fromJson(Map<String, Object> json) {
    return CollectionRight.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CollectionRight = _$CollectionRightTearOff();

/// @nodoc
mixin _$CollectionRight {
  String get collection;
  List<Right> get rights;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CollectionRightCopyWith<CollectionRight> get copyWith;
}

/// @nodoc
abstract class $CollectionRightCopyWith<$Res> {
  factory $CollectionRightCopyWith(
          CollectionRight value, $Res Function(CollectionRight) then) =
      _$CollectionRightCopyWithImpl<$Res>;
  $Res call({String collection, List<Right> rights});
}

/// @nodoc
class _$CollectionRightCopyWithImpl<$Res>
    implements $CollectionRightCopyWith<$Res> {
  _$CollectionRightCopyWithImpl(this._value, this._then);

  final CollectionRight _value;
  // ignore: unused_field
  final $Res Function(CollectionRight) _then;

  @override
  $Res call({
    Object collection = freezed,
    Object rights = freezed,
  }) {
    return _then(_value.copyWith(
      collection:
          collection == freezed ? _value.collection : collection as String,
      rights: rights == freezed ? _value.rights : rights as List<Right>,
    ));
  }
}

/// @nodoc
abstract class _$CollectionRightCopyWith<$Res>
    implements $CollectionRightCopyWith<$Res> {
  factory _$CollectionRightCopyWith(
          _CollectionRight value, $Res Function(_CollectionRight) then) =
      __$CollectionRightCopyWithImpl<$Res>;
  @override
  $Res call({String collection, List<Right> rights});
}

/// @nodoc
class __$CollectionRightCopyWithImpl<$Res>
    extends _$CollectionRightCopyWithImpl<$Res>
    implements _$CollectionRightCopyWith<$Res> {
  __$CollectionRightCopyWithImpl(
      _CollectionRight _value, $Res Function(_CollectionRight) _then)
      : super(_value, (v) => _then(v as _CollectionRight));

  @override
  _CollectionRight get _value => super._value as _CollectionRight;

  @override
  $Res call({
    Object collection = freezed,
    Object rights = freezed,
  }) {
    return _then(_CollectionRight(
      collection:
          collection == freezed ? _value.collection : collection as String,
      rights: rights == freezed ? _value.rights : rights as List<Right>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CollectionRight extends _CollectionRight {
  const _$_CollectionRight({@required this.collection, @required this.rights})
      : assert(collection != null),
        assert(rights != null),
        super._();

  factory _$_CollectionRight.fromJson(Map<String, dynamic> json) =>
      _$_$_CollectionRightFromJson(json);

  @override
  final String collection;
  @override
  final List<Right> rights;

  @override
  String toString() {
    return 'CollectionRight(collection: $collection, rights: $rights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CollectionRight &&
            (identical(other.collection, collection) ||
                const DeepCollectionEquality()
                    .equals(other.collection, collection)) &&
            (identical(other.rights, rights) ||
                const DeepCollectionEquality().equals(other.rights, rights)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(collection) ^
      const DeepCollectionEquality().hash(rights);

  @JsonKey(ignore: true)
  @override
  _$CollectionRightCopyWith<_CollectionRight> get copyWith =>
      __$CollectionRightCopyWithImpl<_CollectionRight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CollectionRightToJson(this);
  }
}

abstract class _CollectionRight extends CollectionRight {
  const _CollectionRight._() : super._();
  const factory _CollectionRight(
      {@required String collection,
      @required List<Right> rights}) = _$_CollectionRight;

  factory _CollectionRight.fromJson(Map<String, dynamic> json) =
      _$_CollectionRight.fromJson;

  @override
  String get collection;
  @override
  List<Right> get rights;
  @override
  @JsonKey(ignore: true)
  _$CollectionRightCopyWith<_CollectionRight> get copyWith;
}

Right _$RightFromJson(Map<String, dynamic> json) {
  return _Right.fromJson(json);
}

/// @nodoc
class _$RightTearOff {
  const _$RightTearOff();

// ignore: unused_element
  _Right call({@required String name, @required String slug}) {
    return _Right(
      name: name,
      slug: slug,
    );
  }

// ignore: unused_element
  Right fromJson(Map<String, Object> json) {
    return Right.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Right = _$RightTearOff();

/// @nodoc
mixin _$Right {
  String get name;
  String get slug;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RightCopyWith<Right> get copyWith;
}

/// @nodoc
abstract class $RightCopyWith<$Res> {
  factory $RightCopyWith(Right value, $Res Function(Right) then) =
      _$RightCopyWithImpl<$Res>;
  $Res call({String name, String slug});
}

/// @nodoc
class _$RightCopyWithImpl<$Res> implements $RightCopyWith<$Res> {
  _$RightCopyWithImpl(this._value, this._then);

  final Right _value;
  // ignore: unused_field
  final $Res Function(Right) _then;

  @override
  $Res call({
    Object name = freezed,
    Object slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      slug: slug == freezed ? _value.slug : slug as String,
    ));
  }
}

/// @nodoc
abstract class _$RightCopyWith<$Res> implements $RightCopyWith<$Res> {
  factory _$RightCopyWith(_Right value, $Res Function(_Right) then) =
      __$RightCopyWithImpl<$Res>;
  @override
  $Res call({String name, String slug});
}

/// @nodoc
class __$RightCopyWithImpl<$Res> extends _$RightCopyWithImpl<$Res>
    implements _$RightCopyWith<$Res> {
  __$RightCopyWithImpl(_Right _value, $Res Function(_Right) _then)
      : super(_value, (v) => _then(v as _Right));

  @override
  _Right get _value => super._value as _Right;

  @override
  $Res call({
    Object name = freezed,
    Object slug = freezed,
  }) {
    return _then(_Right(
      name: name == freezed ? _value.name : name as String,
      slug: slug == freezed ? _value.slug : slug as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Right extends _Right {
  const _$_Right({@required this.name, @required this.slug})
      : assert(name != null),
        assert(slug != null),
        super._();

  factory _$_Right.fromJson(Map<String, dynamic> json) =>
      _$_$_RightFromJson(json);

  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'Right(name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Right &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug);

  @JsonKey(ignore: true)
  @override
  _$RightCopyWith<_Right> get copyWith =>
      __$RightCopyWithImpl<_Right>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RightToJson(this);
  }
}

abstract class _Right extends Right {
  const _Right._() : super._();
  const factory _Right({@required String name, @required String slug}) =
      _$_Right;

  factory _Right.fromJson(Map<String, dynamic> json) = _$_Right.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$RightCopyWith<_Right> get copyWith;
}
