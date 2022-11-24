import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/entity/calender/day_schedule/schedule.dart';
import 'package:shared_preferences/shared_preferences.dart';

final groupCreateNotifierProvider =
    StateNotifierProvider<GroupCreateNotifier, Schedule>(
        (ref) => GroupCreateNotifier());

class GroupCreateNotifier extends StateNotifier<Schedule> {
  GroupCreateNotifier() : super(const Schedule());

  Future<void> setData(String groupId) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('groupId', groupId);
  }

  Future<String> getDate() async {
    final prefs = await SharedPreferences.getInstance();
    String groupId;
    groupId = prefs.getString('groupId') ?? "";
    groupId;
    return groupId;
  }

  Future<void> delDate() async {
    final prefs = await SharedPreferences.getInstance();

    prefs.remove('groupId');
  }
}
