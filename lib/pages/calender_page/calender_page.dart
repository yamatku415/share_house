import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/repository/calender_repository.dart';
import 'package:share_house/notifires/schedule_add_notifirer/schedule_add_notifirer.dart';
import 'package:share_house/pages/calender_page/state/calender_action_state.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends ConsumerStatefulWidget {
  CalenderPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends ConsumerState<CalenderPage> {
  //ここで使用している変数類をfreezedでまとめる？
  List<CalenderActionState> calenderList = [];

  Map<DateTime, List> _eventsList = {};

  DateTime _focused = DateTime.now();

  DateTime? _selected;
  //↑をfreezedで準備するか検討　別のクラスでも検討する

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  @override
  void initState() {
    super.initState();
    CalenderNotifier().fetchScheduleList();
    _selected = _focused;
    _eventsList = {
      DateTime.now().subtract(Duration(days: 5)): ['Test A', 'Test B'],
      //FireStoreから引っ張ってきたdatetimeを付ける
      DateTime.now(): ['Test C', 'Test D', 'Test E', 'Test F'],
    };
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(calenderNotifierProvider);
    final notifier = ref.watch(calenderNotifierProvider.notifier);
    final addNotifier = ref.watch(scheduleAddNotifierProvider.notifier);

    final _events = LinkedHashMap<DateTime, List>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(_eventsList);

    List getEvent(DateTime day) {
      return _events[day] ?? [];
    }

    return Scaffold(
        appBar: AppBar(title: Text(state.memo ?? '')),
        body: ListView.builder(
          itemCount: state.calenderList?.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                  '${state.calenderList?[index].memo}${state.calenderList?[index].icon}'),
              subtitle: Text(state.calenderList?[index].date ?? 'dd'),
              //カレンダーリストには入っている、一旦リストに入れてから、そこからfirebaseの値を取り出さないと複数は取ってこれない。
            );
          },
        ));
  }
}
