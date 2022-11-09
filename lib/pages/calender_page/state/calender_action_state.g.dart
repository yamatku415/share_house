// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calender_action_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalenderActionState _$$_CalenderActionStateFromJson(
        Map<String, dynamic> json) =>
    _$_CalenderActionState(
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['createdAt'], const DateTimeConverter().fromJson),
      memoIcon: (json['memoIcon'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      userId: json['userId'] as String?,
      schedules: json['schedules'] as String?,
      calenderList: (json['calenderList'] as List<dynamic>?)
          ?.map((e) => CalenderActionState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalenderActionStateToJson(
        _$_CalenderActionState instance) =>
    <String, dynamic>{
      'createdAt': _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const DateTimeConverter().toJson),
      'memoIcon': instance.memoIcon,
      'userId': instance.userId,
      'schedules': instance.schedules,
      'calenderList': instance.calenderList,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
