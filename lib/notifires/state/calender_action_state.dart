import 'package:freezed_annotation/freezed_annotation.dart';

part 'calender_action_state.freezed.dart';

@freezed
abstract class CalenderActionState with _$CalenderActionState {
  const factory CalenderActionState(
      {required DateTime day,
      required String icon,
      required String memo}) = _CalenderActionState;
  //string icon の文字列と、assetsのパスを一致させてassetsを表示させる箇所で直接呼び出せるように実装
}
