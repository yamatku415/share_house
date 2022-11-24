// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupCreate {
  String? get groupId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupCreateCopyWith<GroupCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCreateCopyWith<$Res> {
  factory $GroupCreateCopyWith(
          GroupCreate value, $Res Function(GroupCreate) then) =
      _$GroupCreateCopyWithImpl<$Res>;
  $Res call({String? groupId});
}

/// @nodoc
class _$GroupCreateCopyWithImpl<$Res> implements $GroupCreateCopyWith<$Res> {
  _$GroupCreateCopyWithImpl(this._value, this._then);

  final GroupCreate _value;
  // ignore: unused_field
  final $Res Function(GroupCreate) _then;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GroupCreateCopyWith<$Res>
    implements $GroupCreateCopyWith<$Res> {
  factory _$$_GroupCreateCopyWith(
          _$_GroupCreate value, $Res Function(_$_GroupCreate) then) =
      __$$_GroupCreateCopyWithImpl<$Res>;
  @override
  $Res call({String? groupId});
}

/// @nodoc
class __$$_GroupCreateCopyWithImpl<$Res> extends _$GroupCreateCopyWithImpl<$Res>
    implements _$$_GroupCreateCopyWith<$Res> {
  __$$_GroupCreateCopyWithImpl(
      _$_GroupCreate _value, $Res Function(_$_GroupCreate) _then)
      : super(_value, (v) => _then(v as _$_GroupCreate));

  @override
  _$_GroupCreate get _value => super._value as _$_GroupCreate;

  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$_GroupCreate(
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GroupCreate implements _GroupCreate {
  const _$_GroupCreate({this.groupId});

  @override
  final String? groupId;

  @override
  String toString() {
    return 'GroupCreate(groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupCreate &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$$_GroupCreateCopyWith<_$_GroupCreate> get copyWith =>
      __$$_GroupCreateCopyWithImpl<_$_GroupCreate>(this, _$identity);
}

abstract class _GroupCreate implements GroupCreate {
  const factory _GroupCreate({final String? groupId}) = _$_GroupCreate;

  @override
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$_GroupCreateCopyWith<_$_GroupCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
