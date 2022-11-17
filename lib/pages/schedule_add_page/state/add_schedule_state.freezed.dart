// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_schedule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddSchedule _$AddScheduleFromJson(Map<String, dynamic> json) {
  return _AddSchedule.fromJson(json);
}

/// @nodoc
mixin _$AddSchedule {
  String? get memo => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddScheduleCopyWith<AddSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddScheduleCopyWith<$Res> {
  factory $AddScheduleCopyWith(
          AddSchedule value, $Res Function(AddSchedule) then) =
      _$AddScheduleCopyWithImpl<$Res>;
  $Res call({String? memo, String? icon});
}

/// @nodoc
class _$AddScheduleCopyWithImpl<$Res> implements $AddScheduleCopyWith<$Res> {
  _$AddScheduleCopyWithImpl(this._value, this._then);

  final AddSchedule _value;
  // ignore: unused_field
  final $Res Function(AddSchedule) _then;

  @override
  $Res call({
    Object? memo = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AddScheduleCopyWith<$Res>
    implements $AddScheduleCopyWith<$Res> {
  factory _$$_AddScheduleCopyWith(
          _$_AddSchedule value, $Res Function(_$_AddSchedule) then) =
      __$$_AddScheduleCopyWithImpl<$Res>;
  @override
  $Res call({String? memo, String? icon});
}

/// @nodoc
class __$$_AddScheduleCopyWithImpl<$Res> extends _$AddScheduleCopyWithImpl<$Res>
    implements _$$_AddScheduleCopyWith<$Res> {
  __$$_AddScheduleCopyWithImpl(
      _$_AddSchedule _value, $Res Function(_$_AddSchedule) _then)
      : super(_value, (v) => _then(v as _$_AddSchedule));

  @override
  _$_AddSchedule get _value => super._value as _$_AddSchedule;

  @override
  $Res call({
    Object? memo = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_AddSchedule(
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddSchedule implements _AddSchedule {
  const _$_AddSchedule({this.memo, this.icon});

  factory _$_AddSchedule.fromJson(Map<String, dynamic> json) =>
      _$$_AddScheduleFromJson(json);

  @override
  final String? memo;
  @override
  final String? icon;

  @override
  String toString() {
    return 'AddSchedule(memo: $memo, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddSchedule &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(memo),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_AddScheduleCopyWith<_$_AddSchedule> get copyWith =>
      __$$_AddScheduleCopyWithImpl<_$_AddSchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddScheduleToJson(this);
  }
}

abstract class _AddSchedule implements AddSchedule {
  const factory _AddSchedule({final String? memo, final String? icon}) =
      _$_AddSchedule;

  factory _AddSchedule.fromJson(Map<String, dynamic> json) =
      _$_AddSchedule.fromJson;

  @override
  String? get memo;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_AddScheduleCopyWith<_$_AddSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
