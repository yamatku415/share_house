import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/entity/calender/day_schedule.dart';
import 'package:share_house/models/entity/calender/day_schedule/schedule.dart';
import 'package:share_house/pages/group_create_page/group_create_notifier.dart';

import '../../notifires/calender_notifier/calender_notifer.dart';

///firebase取得
final scheduleProvider =
    FutureProvider.autoDispose<Map<DateTime, List<DaySchedule>>>((ref) async {
  final calenderNotifier = ref.watch(calenderNotifierProvider.notifier);
  final eventsList = await calenderNotifier.fetchScheduleList();
  return eventsList;
});

final calenderNotifierProvider =
    StateNotifierProvider.autoDispose<ScheduleRepository, Schedule>(
        (ref) => ScheduleRepository());

class ScheduleRepository extends StateNotifier<Schedule> {
  ScheduleRepository() : super(const Schedule());

  Future<Map<DateTime, List<DaySchedule>>> fetchScheduleList() async {
    Map<DateTime, List<DaySchedule>> eventsList = {};

    print('あああ${state.groupId}');
    final snapshot = await FirebaseFirestore.instance
        .collection('groupIds')
        .doc(await GroupCreateNotifier().getDate())
        .collection('schedule')
        .get();

    for (var doc in snapshot.docs) {
      Map<String, dynamic> data = doc.data();
      final test = Schedule.fromJson(data);
      test;
      final time = test.targetDay;

      eventsList =
          await CalenderNotifier().createdList(test, time!, eventsList);
    }
    return eventsList;
  }
}
