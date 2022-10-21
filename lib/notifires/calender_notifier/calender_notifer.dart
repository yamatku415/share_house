//カレンダーを表示させるメソッド類
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/notifires/calender_notifier/state/calender_action_state.dart';

final calenderNotifierProvider =
    StateNotifierProvider<CalenderNotifier, CalenderActionState>(
        (ref) => CalenderNotifier());

class CalenderNotifier extends StateNotifier<CalenderActionState> {
  CalenderNotifier() : super(const CalenderActionState());

  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .collection('users')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('schedule')
      .snapshots();

  List<dynamic>? schedule;

  void fetchScheduleList() {
    _usersStream.listen((QuerySnapshot snapshot) {
      snapshot.docs.map((DocumentSnapshot document) {
        Map<String, dynamic> data = document.data()! as Map<String, dynamic>;

        state = state.copyWith(
            id: document.id,
            date: data['date'],
            icon: data['icon'],
            memo: data['memo']);

        //firestoreからは引っ張れている。
        //あとはdateがdetestumpで帰ってくるから変換する。
      }).toList();
    });
  }
}
