import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_house/pages/group_create_page/group_create_notifier.dart';
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
    String docGropeId = '';

    DateFormat format = DateFormat('yyyy-MM-dd');
    final date = format.format(DateTime.now()).toString();
    final schedule = FirebaseFirestore.instance.collection('daySchedule').doc();

    final users = FirebaseFirestore.instance
        .collection('groupIds')
        .doc(await GroupCreateNotifier().getDate());
    final userId = FirebaseAuth.instance.currentUser!.uid;

    schedule.set({
      'memo': memo,
      'icon': icon,
      'createdAt': DateTime.now().toString(),
      'userName': name,
      'userId': userId,
    }, SetOptions(merge: true));

    users.set(
      {
        'groupId': docGropeId,
      },
    );

    users.collection('schedule').doc(date).set({
      'idList': FieldValue.arrayUnion([schedule.id]),
      'targetDay': date,
    }, SetOptions(merge: true));
  }
}
