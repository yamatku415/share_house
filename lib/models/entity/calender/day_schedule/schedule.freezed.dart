// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  String? get targetDay => throw _privateConstructorUsedError;
  List<String>? get idList => throw _privateConstructorUsedError;
  String? get elementIdList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res>;
  $Res call({String? targetDay, List<String>? idList, String? elementIdList});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res> implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  final Schedule _value;
  // ignore: unused_field
  final $Res Function(Schedule) _then;

  @override
  $Res call({
    Object? targetDay = freezed,
    Object? idList = freezed,
    Object? elementIdList = freezed,
  }) {
    return _then(_value.copyWith(
      targetDay: targetDay == freezed
          ? _value.targetDay
          : targetDay // ignore: cast_nullable_to_non_nullable
              as String?,
      idList: idList == freezed
          ? _value.idList
          : idList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      elementIdList: elementIdList == freezed
          ? _value.elementIdList
          : elementIdList // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$$_ScheduleCopyWith(
          _$_Schedule value, $Res Function(_$_Schedule) then) =
      __$$_ScheduleCopyWithImpl<$Res>;
  @override
  $Res call({String? targetDay, List<String>? idList, String? elementIdList});
}

/// @nodoc
class __$$_ScheduleCopyWithImpl<$Res> extends _$ScheduleCopyWithImpl<$Res>
    implements _$$_ScheduleCopyWith<$Res> {
  __$$_ScheduleCopyWithImpl(
      _$_Schedule _value, $Res Function(_$_Schedule) _then)
      : super(_value, (v) => _then(v as _$_Schedule));

  @override
  _$_Schedule get _value => super._value as _$_Schedule;

  @override
  $Res call({
    Object? targetDay = freezed,
    Object? idList = freezed,
    Object? elementIdList = freezed,
  }) {
    return _then(_$_Schedule(
      targetDay: targetDay == freezed
          ? _value.targetDay
          : targetDay // ignore: cast_nullable_to_non_nullable
              as String?,
      idList: idList == freezed
          ? _value._idList
          : idList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      elementIdList: elementIdList == freezed
          ? _value.elementIdList
          : elementIdList // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Schedule implements _Schedule {
  const _$_Schedule(
      {this.targetDay, final List<String>? idList, this.elementIdList})
      : _idList = idList;

  factory _$_Schedule.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleFromJson(json);

  @override
  final String? targetDay;
  final List<String>? _idList;
  @override
  List<String>? get idList {
    final value = _idList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? elementIdList;

  @override
  String toString() {
    return 'Schedule(targetDay: $targetDay, idList: $idList, elementIdList: $elementIdList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Schedule &&
            const DeepCollectionEquality().equals(other.targetDay, targetDay) &&
            const DeepCollectionEquality().equals(other._idList, _idList) &&
            const DeepCollectionEquality()
                .equals(other.elementIdList, elementIdList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(targetDay),
      const DeepCollectionEquality().hash(_idList),
      const DeepCollectionEquality().hash(elementIdList));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      __$$_ScheduleCopyWithImpl<_$_Schedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleToJson(this);
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
      {final String? targetDay,
      final List<String>? idList,
      final String? elementIdList}) = _$_Schedule;

  factory _Schedule.fromJson(Map<String, dynamic> json) = _$_Schedule.fromJson;

  @override
  String? get targetDay;
  @override
  List<String>? get idList;
  @override
  String? get elementIdList;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}
