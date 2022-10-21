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

/// @nodoc
mixin _$CalenderActionState {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalenderActionStateCopyWith<CalenderActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalenderActionStateCopyWith<$Res> {
  factory $CalenderActionStateCopyWith(
          CalenderActionState value, $Res Function(CalenderActionState) then) =
      _$CalenderActionStateCopyWithImpl<$Res>;
  $Res call({String? id, DateTime? date, String? icon, String? memo});
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
    Object? id = freezed,
    Object? date = freezed,
    Object? icon = freezed,
    Object? memo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? id, DateTime? date, String? icon, String? memo});
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
    Object? id = freezed,
    Object? date = freezed,
    Object? icon = freezed,
    Object? memo = freezed,
  }) {
    return _then(_$_CalenderActionState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: memo == freezed
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CalenderActionState implements _CalenderActionState {
  const _$_CalenderActionState({this.id, this.date, this.icon, this.memo});

  @override
  final String? id;
  @override
  final DateTime? date;
  @override
  final String? icon;
  @override
  final String? memo;

  @override
  String toString() {
    return 'CalenderActionState(id: $id, date: $date, icon: $icon, memo: $memo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalenderActionState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.memo, memo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(memo));

  @JsonKey(ignore: true)
  @override
  _$$_CalenderActionStateCopyWith<_$_CalenderActionState> get copyWith =>
      __$$_CalenderActionStateCopyWithImpl<_$_CalenderActionState>(
          this, _$identity);
}

abstract class _CalenderActionState implements CalenderActionState {
  const factory _CalenderActionState(
      {final String? id,
      final DateTime? date,
      final String? icon,
      final String? memo}) = _$_CalenderActionState;

  @override
  String? get id;
  @override
  DateTime? get date;
  @override
  String? get icon;
  @override
  String? get memo;
  @override
  @JsonKey(ignore: true)
  _$$_CalenderActionStateCopyWith<_$_CalenderActionState> get copyWith =>
      throw _privateConstructorUsedError;
}
