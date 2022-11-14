import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/entity/calender/day_schedule.dart';
import 'package:share_house/models/entity/calender/day_schedule/schedule.dart';

class CalenderNotifier extends StateNotifier<Schedule> {
  CalenderNotifier() : super(const Schedule());
  Map<DateTime, List> _eventsList = {};
  List memoIconList = [];
  Future<void> createdList(Schedule test) async {
    test.idList?.forEach((e) {
      state = state.copyWith(elementIdList: e);
      fetchDaySchedule(test);
    });
  }

  Future<void> fetchDaySchedule(Schedule test) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('daySchedule')
        .doc(state.elementIdList)
        .get();

    Map<String, dynamic>? data = snapshot.data();
    final dd = DaySchedule.fromJson(data!);

    print('ううう${dd}');
    memoIconList.add([dd.icon, dd.memo]);
    _eventsList.addAll({DateTime.parse(test.targetDay ?? ''): memoIconList});

    print('えええ${_eventsList}');
  }
}
//firebaseの値の処理
