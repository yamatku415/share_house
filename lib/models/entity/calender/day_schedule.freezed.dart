// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DaySchedule _$DayScheduleFromJson(Map<String, dynamic> json) {
  return _DaySchedule.fromJson(json);
}

/// @nodoc
mixin _$DaySchedule {
  String? get createdAt => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayScheduleCopyWith<DaySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayScheduleCopyWith<$Res> {
  factory $DayScheduleCopyWith(
          DaySchedule value, $Res Function(DaySchedule) then) =
      _$DayScheduleCopyWithImpl<$Res>;
  $Res call({String? createdAt, String? userId, String? memo, String? icon});
}

/// @nodoc
class _$DayScheduleCopyWithImpl<$Res> implements $DayScheduleCopyWith<$Res> {
  _$DayScheduleCopyWithImpl(this._value, this._then);

  final DaySchedule _value;
  // ignore: unused_field
  final $Res Function(DaySchedule) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? memo = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_DayScheduleCopyWith<$Res>
    implements $DayScheduleCopyWith<$Res> {
  factory _$$_DayScheduleCopyWith(
          _$_DaySchedule value, $Res Function(_$_DaySchedule) then) =
      __$$_DayScheduleCopyWithImpl<$Res>;
  @override
  $Res call({String? createdAt, String? userId, String? memo, String? icon});
}

/// @nodoc
class __$$_DayScheduleCopyWithImpl<$Res> extends _$DayScheduleCopyWithImpl<$Res>
    implements _$$_DayScheduleCopyWith<$Res> {
  __$$_DayScheduleCopyWithImpl(
      _$_DaySchedule _value, $Res Function(_$_DaySchedule) _then)
      : super(_value, (v) => _then(v as _$_DaySchedule));

  @override
  _$_DaySchedule get _value => super._value as _$_DaySchedule;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? memo = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_DaySchedule(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_DaySchedule implements _DaySchedule {
  const _$_DaySchedule({this.createdAt, this.userId, this.memo, this.icon});

  factory _$_DaySchedule.fromJson(Map<String, dynamic> json) =>
      _$$_DayScheduleFromJson(json);

  @override
  final String? createdAt;
  @override
  final String? userId;
  @override
  final String? memo;
  @override
  final String? icon;

  @override
  String toString() {
    return 'DaySchedule(createdAt: $createdAt, userId: $userId, memo: $memo, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaySchedule &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            const DeepCollectionEquality().equals(other.icon, icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(memo),
      const DeepCollectionEquality().hash(icon));

  @JsonKey(ignore: true)
  @override
  _$$_DayScheduleCopyWith<_$_DaySchedule> get copyWith =>
      __$$_DayScheduleCopyWithImpl<_$_DaySchedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayScheduleToJson(this);
  }
}

abstract class _DaySchedule implements DaySchedule {
  const factory _DaySchedule(
      {final String? createdAt,
      final String? userId,
      final String? memo,
      final String? icon}) = _$_DaySchedule;

  factory _DaySchedule.fromJson(Map<String, dynamic> json) =
      _$_DaySchedule.fromJson;

  @override
  String? get createdAt;
  @override
  String? get userId;
  @override
  String? get memo;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_DayScheduleCopyWith<_$_DaySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}
