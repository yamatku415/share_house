// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginUser _$LoginUserFromJson(Map<String, dynamic> json) {
  return _LoginUser.fromJson(json);
}

/// @nodoc
mixin _$LoginUser {
  String? get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserCopyWith<LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) then) =
      _$LoginUserCopyWithImpl<$Res>;
  $Res call({String? userName});
}

/// @nodoc
class _$LoginUserCopyWithImpl<$Res> implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(this._value, this._then);

  final LoginUser _value;
  // ignore: unused_field
  final $Res Function(LoginUser) _then;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginUserCopyWith<$Res> implements $LoginUserCopyWith<$Res> {
  factory _$$_LoginUserCopyWith(
          _$_LoginUser value, $Res Function(_$_LoginUser) then) =
      __$$_LoginUserCopyWithImpl<$Res>;
  @override
  $Res call({String? userName});
}

/// @nodoc
class __$$_LoginUserCopyWithImpl<$Res> extends _$LoginUserCopyWithImpl<$Res>
    implements _$$_LoginUserCopyWith<$Res> {
  __$$_LoginUserCopyWithImpl(
      _$_LoginUser _value, $Res Function(_$_LoginUser) _then)
      : super(_value, (v) => _then(v as _$_LoginUser));

  @override
  _$_LoginUser get _value => super._value as _$_LoginUser;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_$_LoginUser(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginUser implements _LoginUser {
  const _$_LoginUser({this.userName});

  factory _$_LoginUser.fromJson(Map<String, dynamic> json) =>
      _$$_LoginUserFromJson(json);

  @override
  final String? userName;

  @override
  String toString() {
    return 'LoginUser(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginUser &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$$_LoginUserCopyWith<_$_LoginUser> get copyWith =>
      __$$_LoginUserCopyWithImpl<_$_LoginUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginUserToJson(this);
  }
}

abstract class _LoginUser implements LoginUser {
  const factory _LoginUser({final String? userName}) = _$_LoginUser;

  factory _LoginUser.fromJson(Map<String, dynamic> json) =
      _$_LoginUser.fromJson;

  @override
  String? get userName;
  @override
  @JsonKey(ignore: true)
  _$$_LoginUserCopyWith<_$_LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}
