import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:share_house/models/entity/calender/day_schedule.dart';
import 'package:share_house/models/repository/schedule_repository.dart';
import 'package:share_house/pages/schedule_add_page/schedule_add_page.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderPage extends ConsumerStatefulWidget {
  CalenderPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends ConsumerState<CalenderPage> {
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
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: ref.watch(scheduleProvider).when(
          data: (eventsList) {
            final _events = LinkedHashMap<DateTime, List<DaySchedule>>(
              equals: isSameDay,
              hashCode: getHashCode,
            )..addAll(eventsList);
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
              SingleChildScrollView(
                child: SizedBox(
                  height: 200,
                  child: ListView(
                    shrinkWrap: true,
                    children: getEvent(_selected!)
                        .map((event) => ListTile(
                              leading: Lottie.asset(event.icon),
                              title: Text(event.memo.toString()),
                              subtitle: Text(event.userName),
                            ))
                        .toList(),
                  ),
                ),
              )
            ]);
          },
          error: (e, st) => Container(),
          loading: () => const CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //??????????????????????????????
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return ScheduleAddPage();
          }));
        },
      ),
    );
  }
}
