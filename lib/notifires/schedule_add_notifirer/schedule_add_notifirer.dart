import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_house/pages/calender_page/state/calender_action_state.dart';

final scheduleAddNotifierProvider =
    StateNotifierProvider<ScheduleAddNotifier, CalenderActionState>(
        (ref) => ScheduleAddNotifier());

class ScheduleAddNotifier extends StateNotifier<CalenderActionState> {
  ScheduleAddNotifier() : super(CalenderActionState());
  DateFormat format = DateFormat('yyyy-MM-dd');

  void addSchedule() {
    final schedule = FirebaseFirestore.instance
        .collection('schedule')
        .doc(format.format(DateTime.now()).toString())
        .collection('daySchedule');
    schedule.add({
      'createdAt': DateTime.now().toString(),
      'memoIcon': {'Icon': 'メモ内容'},
      'userId': FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .id,
    });

    final users = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('memo')
        .doc();

    users.set({
      'createdAt': DateTime.now().toString(),
      'memoIcon': {'Icon': 'メモ内容'},
      'memoId': users.id,
    });
  }
}
