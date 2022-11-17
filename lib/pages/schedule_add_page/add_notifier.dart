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

  Future<void> addFireStore() async {
    DateFormat format = DateFormat('yyyy-MM-dd');
    final date = format.format(DateTime.now()).toString();
    final schedule = FirebaseFirestore.instance.collection('daySchedule').doc();

    final users = FirebaseFirestore.instance.collection('schedule');
    final userId = users.doc(FirebaseAuth.instance.currentUser!.uid).id;

    schedule.set({
      'memo': state.memo,
      'icon': state.icon,
      'createdAt': DateTime.now().toString(),
      'userId': userId,
    }, SetOptions(merge: true));

    users.doc('${format.format(DateTime.now()).toString()}$userId').set(
      {
        'idList': [schedule.id],
        'icon': 'icon',
        'targetDay': date,
      },
    );
  }
}
