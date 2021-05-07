// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'roles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Roles _$RolesFromJson(Map<String, dynamic> json) {
  return _Roles.fromJson(json);
}

/// @nodoc
class _$RolesTearOff {
  const _$RolesTearOff();

// ignore: unused_element
  _Roles call({@required String name, @required List<Right> rights}) {
    return _Roles(
      name: name,
      rights: rights,
    );
  }

// ignore: unused_element
  Roles fromJson(Map<String, Object> json) {
    return Roles.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Roles = _$RolesTearOff();

/// @nodoc
mixin _$Roles {
  String get name;
  List<Right> get rights;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RolesCopyWith<Roles> get copyWith;
}

/// @nodoc
abstract class $RolesCopyWith<$Res> {
  factory $RolesCopyWith(Roles value, $Res Function(Roles) then) =
      _$RolesCopyWithImpl<$Res>;
  $Res call({String name, List<Right> rights});
}

/// @nodoc
class _$RolesCopyWithImpl<$Res> implements $RolesCopyWith<$Res> {
  _$RolesCopyWithImpl(this._value, this._then);

  final Roles _value;
  // ignore: unused_field
  final $Res Function(Roles) _then;

  @override
  $Res call({
    Object name = freezed,
    Object rights = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      rights: rights == freezed ? _value.rights : rights as List<Right>,
    ));
  }
}

/// @nodoc
abstract class _$RolesCopyWith<$Res> implements $RolesCopyWith<$Res> {
  factory _$RolesCopyWith(_Roles value, $Res Function(_Roles) then) =
      __$RolesCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<Right> rights});
}

/// @nodoc
class __$RolesCopyWithImpl<$Res> extends _$RolesCopyWithImpl<$Res>
    implements _$RolesCopyWith<$Res> {
  __$RolesCopyWithImpl(_Roles _value, $Res Function(_Roles) _then)
      : super(_value, (v) => _then(v as _Roles));

  @override
  _Roles get _value => super._value as _Roles;

  @override
  $Res call({
    Object name = freezed,
    Object rights = freezed,
  }) {
    return _then(_Roles(
      name: name == freezed ? _value.name : name as String,
      rights: rights == freezed ? _value.rights : rights as List<Right>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Roles implements _Roles {
  const _$_Roles({@required this.name, @required this.rights})
      : assert(name != null),
        assert(rights != null);

  factory _$_Roles.fromJson(Map<String, dynamic> json) =>
      _$_$_RolesFromJson(json);

  @override
  final String name;
  @override
  final List<Right> rights;

  @override
  String toString() {
    return 'Roles(name: $name, rights: $rights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Roles &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rights, rights) ||
                const DeepCollectionEquality().equals(other.rights, rights)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rights);

  @JsonKey(ignore: true)
  @override
  _$RolesCopyWith<_Roles> get copyWith =>
      __$RolesCopyWithImpl<_Roles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RolesToJson(this);
  }
}

abstract class _Roles implements Roles {
  const factory _Roles({@required String name, @required List<Right> rights}) =
      _$_Roles;

  factory _Roles.fromJson(Map<String, dynamic> json) = _$_Roles.fromJson;

  @override
  String get name;
  @override
  List<Right> get rights;
  @override
  @JsonKey(ignore: true)
  _$RolesCopyWith<_Roles> get copyWith;
}
