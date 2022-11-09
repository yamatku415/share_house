import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/repository/calender_repository.dart';
import 'package:share_house/notifires/schedule_add_notifirer/schedule_add_notifirer.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends ConsumerStatefulWidget {
  CalenderPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends ConsumerState<CalenderPage> {
  //ここで使用している変数類をfreezedでまとめる？

  Map<DateTime, List<Map<String, String>>> calenderList = {};

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

    _selected = _focused;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(calenderNotifierProvider);
    final notifier = ref.watch(calenderNotifierProvider.notifier);
    final addNotifier = ref.watch(scheduleAddNotifierProvider.notifier);

    return Scaffold(
        appBar: AppBar(title: const Text('')),
        body: ref.watch(scheduleProvider).when(
            data: (calenderList) {
              final _events = LinkedHashMap<DateTime, List>(
                equals: isSameDay,
                hashCode: getHashCode,
              )..addAll(calenderList);

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
                      calenderList = await notifier.fetchScheduleList();

                      setState(() {});

                      // for (int i = 0; i < calenderList.length; i++) {
                      //   _eventsList = ;
                      //
                      //   print(calenderList);
                      //   print('いいいい${_events}');
                      // }
                      // // addNotifier.addSchedule();
                    },
                    child: Text("nasiy")),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 200,
                    child: ListView(
                      shrinkWrap: true,
                      children: getEvent(_selected!)
                          .map((event) => ListTile(
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
