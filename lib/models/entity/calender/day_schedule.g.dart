// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DaySchedule _$$_DayScheduleFromJson(Map<String, dynamic> json) =>
    _$_DaySchedule(
      createdAt: json['createdAt'] as String?,
      userId: json['userId'] as String?,
      memo: json['memo'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_DayScheduleToJson(_$_DaySchedule instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'userId': instance.userId,
      'memo': instance.memo,
      'icon': instance.icon,
    };
