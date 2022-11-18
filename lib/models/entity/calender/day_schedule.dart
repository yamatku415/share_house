import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_schedule.freezed.dart';
part 'day_schedule.g.dart';

@freezed

///firebase取得
class DaySchedule with _$DaySchedule {
  const factory DaySchedule(
      {String? createdAt,
      String? userId,
      String? memo,
      String? icon,
      String? userName}) = _DaySchedule;
  //string icon の文字列と、assetsのパスを一致させてassetsを表示させる箇所で直接呼び出せるように実装
  factory DaySchedule.fromJson(Map<String, dynamic> json) =>
      _$DayScheduleFromJson(json);
}
