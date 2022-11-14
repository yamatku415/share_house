import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/repository/schedule_repository.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends ConsumerStatefulWidget {
  CalenderPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends ConsumerState<CalenderPage> {
  //直接この値を使用する

  Map<DateTime, List<String>> _eventsList = {
    DateTime.parse('2022-11-10 11:19:49.334354'): [
      'ｍｍお',
      'memo内容',
    ],
    DateTime.parse('2022-11-10 11:24:49.978137'): [
      'ｍｍ',
      'memo内容',
      'a'
          ''
    ]
  };
  //もとからの物

  DateTime _focused = DateTime.now();

  DateTime? _selected;

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  @override
  void initState() {
    super.initState();

    _selected = _focused;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(calenderNotifierProvider);
    final notifier = ref.watch(calenderNotifierProvider.notifier);
    // final addNotifier = ref.watch(scheduleAddNotifierProvider.notifier);

    return Scaffold(
        appBar: AppBar(title: const Text('')),
        body: ref.watch(scheduleProvider).when(
            data: (calenderList) {
              final _events = LinkedHashMap<DateTime, List<String>>(
                equals: isSameDay,
                hashCode: getHashCode,
              )..addAll(_eventsList);

              List getEvent(DateTime day) {
                return _events[day] ?? [];
              }

              return Column(children: [
                TableCalendar(
                  firstDay: DateTime.utc(2022, 4, 1),
                  lastDay: DateTime.utc(2025, 12, 31),
                  eventLoader: getEvent,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selected, day);
                  },
                  onDaySelected: (selected, focused) {
                    if (!isSameDay(_selected, selected)) {
                      setState(() {
                        _selected = selected;
                        _focused = focused;
                      });
                    }
                  },
                  focusedDay: _focused,
                ),
                TextButton(
                    onPressed: () async {
                      await notifier
                          .fetchScheduleList(); // addNotifier.addSchedule();
                    },
                    child: Text("nasiy")),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      shrinkWrap: true,
                      children: getEvent(_selected!)
                          .map((event) => ListTile(
                                leading: Text('icon'),
                                title: Text(event.toString()),
                              ))
                          .toList(),
                    ),
                  ),
                )
              ]);
            },
            error: (e, st) => Container(),
            loading: () => const CircularProgressIndicator()));
  }
}
