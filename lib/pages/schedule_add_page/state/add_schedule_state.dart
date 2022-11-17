import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_schedule_state.freezed.dart';
part 'add_schedule_state.g.dart';

@freezed
class AddSchedule with _$AddSchedule {
  const factory AddSchedule({String? memo, String? icon}) = _AddSchedule;
  factory AddSchedule.fromJson(Map<String, dynamic> json) =>
      _$AddScheduleFromJson(json);
}
