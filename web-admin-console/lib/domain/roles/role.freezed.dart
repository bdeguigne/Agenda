// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
class _$RoleTearOff {
  const _$RoleTearOff();

// ignore: unused_element
  _Role call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required List<Right> rights}) {
    return _Role(
      id: id,
      name: name,
      rights: rights,
    );
  }

// ignore: unused_element
  Role fromJson(Map<String, Object> json) {
    return Role.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Role = _$RoleTearOff();

/// @nodoc
mixin _$Role {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  List<Right> get rights;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id, String name, List<Right> rights});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res> implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  final Role _value;
  // ignore: unused_field
  final $Res Function(Role) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object rights = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      rights: rights == freezed ? _value.rights : rights as List<Right>,
    ));
  }
}

/// @nodoc
abstract class _$RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$RoleCopyWith(_Role value, $Res Function(_Role) then) =
      __$RoleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id, String name, List<Right> rights});
}

/// @nodoc
class __$RoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res>
    implements _$RoleCopyWith<$Res> {
  __$RoleCopyWithImpl(_Role _value, $Res Function(_Role) _then)
      : super(_value, (v) => _then(v as _Role));

  @override
  _Role get _value => super._value as _Role;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object rights = freezed,
  }) {
    return _then(_Role(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      rights: rights == freezed ? _value.rights : rights as List<Right>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Role implements _Role {
  const _$_Role(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.rights})
      : assert(name != null),
        assert(rights != null);

  factory _$_Role.fromJson(Map<String, dynamic> json) =>
      _$_$_RoleFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final List<Right> rights;

  @override
  String toString() {
    return 'Role(id: $id, name: $name, rights: $rights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Role &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rights, rights) ||
                const DeepCollectionEquality().equals(other.rights, rights)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rights);

  @JsonKey(ignore: true)
  @override
  _$RoleCopyWith<_Role> get copyWith =>
      __$RoleCopyWithImpl<_Role>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoleToJson(this);
  }
}

abstract class _Role implements Role {
  const factory _Role(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required List<Right> rights}) = _$_Role;

  factory _Role.fromJson(Map<String, dynamic> json) = _$_Role.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  List<Right> get rights;
  @override
  @JsonKey(ignore: true)
  _$RoleCopyWith<_Role> get copyWith;
}
