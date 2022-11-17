import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/entity/calender/day_schedule.dart';
import 'package:share_house/models/entity/calender/day_schedule/schedule.dart';

import '../../notifires/calender_notifier/calender_notifer.dart';

///firebase取得
///勉強用コード
final scheduleProvider =
    FutureProvider.autoDispose<Map<DateTime, List<DaySchedule>>>((ref) async {
  final calenderNotifire = ref.watch(calenderNotifierProvider.notifier);
  final eventsList = await calenderNotifire.fetchScheduleList();
  return eventsList;
});

final calenderNotifierProvider =
    StateNotifierProvider.autoDispose<ScheduleRepository, Schedule>(
        (ref) => ScheduleRepository());

class ScheduleRepository extends StateNotifier<Schedule> {
  ScheduleRepository() : super(const Schedule());

  Future<Map<DateTime, List<DaySchedule>>> fetchScheduleList() async {
    Map<DateTime, List<DaySchedule>> eventsList = {};

    final snapshot =
        await FirebaseFirestore.instance.collection('schedule').get();

    for (var doc in snapshot.docs) {
      Map<String, dynamic> data = doc.data();
      final test = Schedule.fromJson(data);
      test;
      final time = test.targetDay;

      eventsList =
          await CalenderNotifier().createdList(test, time!, eventsList);
      //stateで_eventsListを作成して周回事でcopywithすればよいのでは？
    }
    return eventsList;
  }
}
