import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/entity/calender/day_schedule.dart';
import 'package:share_house/models/entity/calender/day_schedule/schedule.dart';

class CalenderNotifier extends StateNotifier<Schedule> {
  CalenderNotifier() : super(const Schedule());

  Future<Map<DateTime, List<DaySchedule>>> createdList(Schedule test,
      String time, Map<DateTime, List<DaySchedule>> eventsList) async {
    List<DaySchedule> memoIconList = [];

    test.idList?.forEach((element) async {
      //ここでiconなどをひとまとまりにできないか、

      final dd = await fetchDaySchedule(element);

      memoIconList.add(dd);
    });
    return Future.delayed(const Duration(milliseconds: 700)).then((_) {
      eventsList.addAll({DateTime.parse(test.targetDay ?? ''): memoIconList});

      return eventsList;
    });
  }

  Future<DaySchedule> fetchDaySchedule(String id) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('daySchedule')
        .doc(id)
        .get();

    Map<String, dynamic>? data = snapshot.data();
    final dd = DaySchedule.fromJson(data!);
    return dd;
  }
}

//firebaseの値の処理
