// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calender_action_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalenderActionState _$$_CalenderActionStateFromJson(
        Map<String, dynamic> json) =>
    _$_CalenderActionState(
      date: const DateTimeConverter().fromJson(json['date'] as String),
      icon: json['icon'] as String?,
      memo: json['memo'] as String?,
      calenderList: (json['calenderList'] as List<dynamic>?)
          ?.map((e) => CalenderActionState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalenderActionStateToJson(
        _$_CalenderActionState instance) =>
    <String, dynamic>{
      'date': const DateTimeConverter().toJson(instance.date),
      'icon': instance.icon,
      'memo': instance.memo,
      'calenderList': instance.calenderList,
    };
