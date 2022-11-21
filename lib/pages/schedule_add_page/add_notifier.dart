import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_house/pages/schedule_add_page/state/add_schedule_state.dart';

final scheduleAddNotifierProvider =
    StateNotifierProvider.autoDispose<AddNotifier, AddSchedule>(
        (ref) => AddNotifier());

class AddNotifier extends StateNotifier<AddSchedule> {
  AddNotifier() : super(const AddSchedule());

  void set(String? icon) {
    state = state.copyWith(icon: icon);
  }

  void setMemo(String? memo) {
    state = state.copyWith(memo: memo);
  }

  Future<void> addFireStore(memo, icon, name) async {
    DateFormat format = DateFormat('yyyy-MM-dd');
    final date = format.format(DateTime.now()).toString();
    final schedule = FirebaseFirestore.instance.collection('daySchedule').doc();

    final users = FirebaseFirestore.instance.collection('schedule');
    final userId = users.doc(FirebaseAuth.instance.currentUser!.uid).id;

    schedule.set({
      'memo': memo,
      'icon': icon,
      'createdAt': DateTime.now().toString(),
      'userName': name,
      'userId': userId,
    }, SetOptions(merge: true));

    users.doc('${format.format(DateTime.now()).toString()}$userId').set({
      'idList': FieldValue.arrayUnion([schedule.id]),
      'targetDay': date,
    }, SetOptions(merge: true));
  }
}
