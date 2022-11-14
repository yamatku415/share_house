import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/entity/calender/day_schedule/schedule.dart';

import '../../notifires/calender_notifier/calender_notifer.dart';

///firebase取得
///勉強用コード
final scheduleProvider =
    FutureProvider.autoDispose<List<Schedule>>((ref) async {
  final calenderNotifire = ref.watch(calenderNotifierProvider.notifier);
  final calenderList = await calenderNotifire.fetchScheduleList();
  return [];
});

final calenderNotifierProvider =
    StateNotifierProvider.autoDispose<ScheduleRepository, Schedule>(
        (ref) => ScheduleRepository());

class ScheduleRepository extends StateNotifier<Schedule> {
  ScheduleRepository() : super(Schedule());

  Future<void> fetchScheduleList() async {
    List<Schedule> calenderList = [];
    List<String> scheduleList = [];

    final snapshot =
        await FirebaseFirestore.instance.collection('schedule').get();

    for (var doc in snapshot.docs) {
      Map<String, dynamic> data = doc.data();
      final test = Schedule.fromJson(data);
      test;
      print('あああ${test}');

      CalenderNotifier().createdList(test);
    }
  }
}
