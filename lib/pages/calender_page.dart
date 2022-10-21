import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:share_house/notifires/calender_notifier/calender_notifer.dart';
import 'package:share_house/notifires/schedule_add_notifirer/schedule_add_notifirer.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends ConsumerWidget {
  CalenderPage({Key? key}) : super(key: key);

  Map<DateTime, List> _eventsList = {};

  DateTime _focused = DateTime.now();
  DateTime? _selected;

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  @override
  void initState() {
    _selected = _focused;
    _eventsList = {
      DateTime.now().subtract(const Duration(days: 5)): ['Test A', 'Test B'],
      //FireStoreから引っ張ってきたdatetimeを付ける
      DateTime.now(): ['Test C', 'Test D', 'Test E', 'Test F'],
    };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        appBar: AppBar(),
        body: Column(children: [
          TableCalendar(
            firstDay: DateTime.utc(2022, 4, 1),
            lastDay: DateTime.utc(2025, 12, 31),
            eventLoader: getEvent, //追記
            selectedDayPredicate: (day) {
              return isSameDay(_selected, day);
            },
            onDaySelected: (selected, focused) {
              if (!isSameDay(_selected, selected)) {
                _selected = selected;
                _focused = focused;
              }
            },
            focusedDay: _focused,
          ),
          TextButton(
              onPressed: () async {
                addNotifier.addSchedule();
                notifier.fetchScheduleList();
              },
              child: Text(state.memo ??
                  "nasiy"
                      "")),
          ListView(
            shrinkWrap: true,
            children: getEvent(DateTime.now())
                .map((event) => ListTile(
                      leading: Lottie.asset(
                          'assets/119879-mascotas-aseguradas.json'),
                      title: Text(event.toString()),
                    ))
                .toList(),
          )
        ]));
  }
}
