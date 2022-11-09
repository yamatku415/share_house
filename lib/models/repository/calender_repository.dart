import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
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
    debugPrint('ちんこ！！！！！！！！！！！！！！！！');
    final docList = await getDocId();

    for (var id in docList) {
      final snapshot = await FirebaseFirestore.instance
          .collection('schedule')
          .doc(id)
          .collection('daySchedule')
          .get();

      for (var doc in snapshot.docs) {
        Map<String, dynamic> data = doc.data();
        final daySchedule = CalenderActionState.fromJson(data);

        memoIconList.add(daySchedule.memoIcon ?? {});
      }
      calenderList.addAll({DateTime.parse(id): memoIconList});
    }
    return calenderList;
  }

  Future<List<String>> getDocId() async {
    List<String> docList = [];

    await FirebaseFirestore.instance.collection('schedule').get().then(
          (QuerySnapshot querySnapshot) => {
            querySnapshot.docs.forEach(
              (doc) {
                docList.add(doc.id);
                print('${doc.id}あああああ');
              },
            ),
          },
        );
    debugPrint('万個！！！！！！！！！！！！！！！！');

    return docList;
  }
}
