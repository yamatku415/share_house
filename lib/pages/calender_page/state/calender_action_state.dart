import 'package:freezed_annotation/freezed_annotation.dart';

part 'calender_action_state.freezed.dart';
part 'calender_action_state.g.dart';

@freezed

///firebase取得
class CalenderActionState with _$CalenderActionState {
  const factory CalenderActionState({
    String? date,
    String? icon,
    String? memo,
    List<CalenderActionState>? calenderList,
  }) = _CalenderActionState;
  //string icon の文字列と、assetsのパスを一致させてassetsを表示させる箇所で直接呼び出せるように実装
  factory CalenderActionState.fromJson(Map<String, dynamic> json) =>
      _$CalenderActionStateFromJson(json);
}