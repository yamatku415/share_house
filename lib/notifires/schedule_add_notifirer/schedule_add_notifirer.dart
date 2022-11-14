import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

// final scheduleAddNotifierProvider =
//     StateNotifierProvider<ScheduleAddNotifier, day_schedule>(
//         (ref) => ScheduleAddNotifier());

class ScheduleAddNotifier {
  DateFormat format = DateFormat('yyyy-MM-dd');

  void addSchedule() {
    final schedule = FirebaseFirestore.instance
        .collection('schedule')
        .doc(format.format(DateTime.now()).toString());
    schedule.set({
      'daySchedule': {
        FirebaseFirestore.instance.collection('schedule').doc().id: {
          'createdAt': DateTime.now().toString(),
          'icon': 'aa',
          'memo': 'memo内容',
          'userId': FirebaseFirestore.instance
              .collection('users')
              .doc(FirebaseAuth.instance.currentUser!.uid)
              .id
        }
      },
    }, SetOptions(merge: true));

    final users = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('memo')
        .doc();

    users.set({
      'createdAt': DateTime.now().toString(),
      'memo': 'memo内容',
      'icon': 'icon',
      'memoId': users.id,
    });
  }
}
