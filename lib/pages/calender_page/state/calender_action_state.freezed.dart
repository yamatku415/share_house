// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calender_action_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalenderActionState _$CalenderActionStateFromJson(Map<String, dynamic> json) {
  return _CalenderActionState.fromJson(json);
}

/// @nodoc
mixin _$CalenderActionState {
  @DateTimeConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Map<String, String>? get memoIcon => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get schedules => throw _privateConstructorUsedError;
  List<CalenderActionState>? get calenderList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalenderActionStateCopyWith<CalenderActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalenderActionStateCopyWith<$Res> {
  factory $CalenderActionStateCopyWith(
          CalenderActionState value, $Res Function(CalenderActionState) then) =
      _$CalenderActionStateCopyWithImpl<$Res>;
  $Res call(
      {@DateTimeConverter() DateTime? createdAt,
      Map<String, String>? memoIcon,
      String? userId,
      String? schedules,
      List<CalenderActionState>? calenderList});
}

/// @nodoc
class _$CalenderActionStateCopyWithImpl<$Res>
    implements $CalenderActionStateCopyWith<$Res> {
  _$CalenderActionStateCopyWithImpl(this._value, this._then);

  final CalenderActionState _value;
  // ignore: unused_field
  final $Res Function(CalenderActionState) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? memoIcon = freezed,
    Object? userId = freezed,
    Object? schedules = freezed,
    Object? calenderList = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memoIcon: memoIcon == freezed
          ? _value.memoIcon
          : memoIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      schedules: schedules == freezed
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as String?,
      calenderList: calenderList == freezed
          ? _value.calenderList
          : calenderList // ignore: cast_nullable_to_non_nullable
              as List<CalenderActionState>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CalenderActionStateCopyWith<$Res>
    implements $CalenderActionStateCopyWith<$Res> {
  factory _$$_CalenderActionStateCopyWith(_$_CalenderActionState value,
          $Res Function(_$_CalenderActionState) then) =
      __$$_CalenderActionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@DateTimeConverter() DateTime? createdAt,
      Map<String, String>? memoIcon,
      String? userId,
      String? schedules,
      List<CalenderActionState>? calenderList});
}

/// @nodoc
class __$$_CalenderActionStateCopyWithImpl<$Res>
    extends _$CalenderActionStateCopyWithImpl<$Res>
    implements _$$_CalenderActionStateCopyWith<$Res> {
  __$$_CalenderActionStateCopyWithImpl(_$_CalenderActionState _value,
      $Res Function(_$_CalenderActionState) _then)
      : super(_value, (v) => _then(v as _$_CalenderActionState));

  @override
  _$_CalenderActionState get _value => super._value as _$_CalenderActionState;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? memoIcon = freezed,
    Object? userId = freezed,
    Object? schedules = freezed,
    Object? calenderList = freezed,
  }) {
    return _then(_$_CalenderActionState(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memoIcon: memoIcon == freezed
          ? _value._memoIcon
          : memoIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      schedules: schedules == freezed
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as String?,
      calenderList: calenderList == freezed
          ? _value._calenderList
          : calenderList // ignore: cast_nullable_to_non_nullable
              as List<CalenderActionState>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalenderActionState implements _CalenderActionState {
  const _$_CalenderActionState(
      {@DateTimeConverter() this.createdAt,
      final Map<String, String>? memoIcon,
      this.userId,
      this.schedules,
      final List<CalenderActionState>? calenderList})
      : _memoIcon = memoIcon,
        _calenderList = calenderList;

  factory _$_CalenderActionState.fromJson(Map<String, dynamic> json) =>
      _$$_CalenderActionStateFromJson(json);

  @override
  @DateTimeConverter()
  final DateTime? createdAt;
  final Map<String, String>? _memoIcon;
  @override
  Map<String, String>? get memoIcon {
    final value = _memoIcon;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? userId;
  @override
  final String? schedules;
  final List<CalenderActionState>? _calenderList;
  @override
  List<CalenderActionState>? get calenderList {
    final value = _calenderList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CalenderActionState(createdAt: $createdAt, memoIcon: $memoIcon, userId: $userId, schedules: $schedules, calenderList: $calenderList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalenderActionState &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other._memoIcon, _memoIcon) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.schedules, schedules) &&
            const DeepCollectionEquality()
                .equals(other._calenderList, _calenderList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(_memoIcon),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(schedules),
      const DeepCollectionEquality().hash(_calenderList));

  @JsonKey(ignore: true)
  @override
  _$$_CalenderActionStateCopyWith<_$_CalenderActionState> get copyWith =>
      __$$_CalenderActionStateCopyWithImpl<_$_CalenderActionState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalenderActionStateToJson(this);
  }
}

abstract class _CalenderActionState implements CalenderActionState {
  const factory _CalenderActionState(
      {@DateTimeConverter() final DateTime? createdAt,
      final Map<String, String>? memoIcon,
      final String? userId,
      final String? schedules,
      final List<CalenderActionState>? calenderList}) = _$_CalenderActionState;

  factory _CalenderActionState.fromJson(Map<String, dynamic> json) =
      _$_CalenderActionState.fromJson;

  @override
  @DateTimeConverter()
  DateTime? get createdAt;
  @override
  Map<String, String>? get memoIcon;
  @override
  String? get userId;
  @override
  String? get schedules;
  @override
  List<CalenderActionState>? get calenderList;
  @override
  @JsonKey(ignore: true)
  _$$_CalenderActionStateCopyWith<_$_CalenderActionState> get copyWith =>
      throw _privateConstructorUsedError;
}
