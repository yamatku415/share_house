import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/pages/calender_page/state/calender_action_state.dart';

final scheduleAddNotifierProvider =
    StateNotifierProvider<ScheduleAddNotifier, CalenderActionState>(
        (ref) => ScheduleAddNotifier());

class ScheduleAddNotifier extends StateNotifier<CalenderActionState> {
  ScheduleAddNotifier() : super(CalenderActionState());

  void addSchedule() {
    FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('schedule')
        .add({
      'date': DateTime.now().toString(),
      'icon': 'assets/119879-mascotas-aseguradas.json',
      'memo': 'あそび',
    });
  }
}
