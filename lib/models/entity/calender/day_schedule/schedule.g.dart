// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Schedule _$$_ScheduleFromJson(Map<String, dynamic> json) => _$_Schedule(
      targetDay: json['targetDay'] as String?,
      idList:
          (json['idList'] as List<dynamic>?)?.map((e) => e as String).toList(),
      elementIdList: json['elementIdList'] as String?,
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'targetDay': instance.targetDay,
      'idList': instance.idList,
      'elementIdList': instance.elementIdList,
    };
