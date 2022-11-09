import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/pages/calender_page/state/calender_action_state.dart';

///firebase取得
///勉強用コード
final scheduleProvider =
    FutureProvider.autoDispose<Map<DateTime, List<Map<String, String>>>>(
        (ref) async {
  final calenderNotifire = ref.watch(calenderNotifierProvider);
  // final calenderList = await calenderNotifire.fetchScheduleList();
  return {};
});

final calenderNotifierProvider =
    StateNotifierProvider.autoDispose<CalenderNotifier, CalenderActionState>(
        (ref) => CalenderNotifier(const CalenderActionState()));

class CalenderNotifier extends StateNotifier<CalenderActionState> {
  CalenderNotifier(CalenderActionState state) : super(state);

  Future<Map<DateTime, List<Map<String, String>>>> fetchScheduleList() async {
    Map<DateTime, List<Map<String, String>>> calenderList = {};
    List<Map<String, String>> memoIconList = [];
    final docList = await getDocId();

    for (var id in docList) {
      //idにdocList（docidのリスト）の数だけ入れて処理を繰り返す処理
      final snapshot = await FirebaseFirestore.instance
          .collection('schedule')
          .doc(id)
          .collection('daySchedule')
          .get();

      for (var doc in snapshot.docs) {
        Map<String, dynamic> data = doc.data();
        //fromJson(data)でCalenderActionStateの変数にjsonから取ってきた値を格納している。
        final daySchedule = CalenderActionState.fromJson(data);
        //リストにaddして書くのしている。
        memoIconList.add(daySchedule.memoIcon ?? {});
      }
      calenderList.addAll({DateTime.parse(id): memoIconList});
    }
    return calenderList;
  }

  Future<List<String>> getDocId() async {
    List<String> docList = [];

    //docidを全権取得している。

    await FirebaseFirestore.instance.collection('schedule').get().then(
          (QuerySnapshot querySnapshot) => {
            querySnapshot.docs.forEach(
              (doc) {
                docList.add(doc.id);
              },
            ),
          },
        );

    return docList;
  }
}
