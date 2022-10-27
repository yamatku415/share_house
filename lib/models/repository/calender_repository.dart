import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/pages/calender_page/state/calender_action_state.dart';

///firebase取得

final calenderNotifierProvider =
    StateNotifierProvider<CalenderNotifier, CalenderActionState>(
        (ref) => CalenderNotifier());

class CalenderNotifier extends StateNotifier<CalenderActionState> {
  CalenderNotifier() : super(const CalenderActionState());

  Future<List<CalenderActionState>> fetchScheduleList() async {
    List<CalenderActionState> calenderList = [];

    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('schedule')
        .get();

    for (var doc in snapshot.docs) {
      Map<String, dynamic> data = doc.data();
      calenderList.add(CalenderActionState.fromJson(data));
    }

    state = state.copyWith(calenderList: calenderList);

    return calenderList;
  }
}
