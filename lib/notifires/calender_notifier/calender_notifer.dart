//カレンダーを表示させるメソッド類
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_house/notifires/calender_notifier/state/calender_action_state.dart';

final calenderNotifierProvider =
    StateNotifierProvider<CalenderNotifier, CalenderActionState>(
        (ref) => CalenderNotifier());

class CalenderNotifier extends StateNotifier<CalenderActionState> {
  CalenderNotifier() : super(CalenderActionState(date: DateTime.now()));

  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .collection('users')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('schedule')
      .snapshots();

  List<dynamic>? schedule;
  DateTime dateTime = DateTime.now();

  static final _dateFormatter = DateFormat("yyyy/MM/dd");

  void fetchScheduleList() {
    _usersStream.listen((QuerySnapshot snapshot) {
      snapshot.docs.map((DocumentSnapshot document) {
        Map<String, dynamic> data = document.data()! as Map<String, dynamic>;

        final date = data['date'];
        if (date is String) {
          dateTime = _dateFormatter.parseStrict(date);
        }

        state = state.copyWith(
            id: document.id,
            date: dateTime,
            icon: data['icon'],
            memo: data['memo']);
      }).toList();
    });
  }

  //ここでカレンダーのwidgetを作成すればseectedなどcopywith出来るのではないか？
}
