import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/entity/calender/day_schedule.dart';
import 'package:share_house/models/entity/calender/day_schedule/schedule.dart';

class CalenderNotifier extends StateNotifier<Schedule> {
  CalenderNotifier() : super(const Schedule());

  Future<void> createdList(Schedule test) async {
    print('いいい${test.idList!.length}');

    test.idList?.forEach((e) {
      state = state.copyWith(elementIdList: e);
      print('ううう${e}');
      fetchDaySchedule();
    });
  }

  Future<void> fetchDaySchedule() async {
    final snapshot = await FirebaseFirestore.instance
        .collection('daySchedule')
        .doc(state.elementIdList)
        .get();

    Map<String, dynamic>? data = snapshot.data();
    final dd = DaySchedule.fromJson(data!);
    print('えええ${dd}');
  }
}
//firebaseの値の処理
