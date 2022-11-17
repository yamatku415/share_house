import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/pages/schedule_add_page/add_notifier.dart';

class ScheduleAddPage extends ConsumerWidget {
  ScheduleAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(scheduleAddNotifierProvider);
    var stateNotifier = ref.watch(scheduleAddNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('スケジュールの追加'),
      ),
      body: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              state = state.copyWith(memo: value);
            },
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  state = state.copyWith(
                      icon: 'assets/10484-heart-fluttering.json');
                },
                child: const Text('heart'),
              ),
              TextButton(
                onPressed: () {
                  state = state.copyWith(
                      icon: 'assets/119879-mascotas-aseguradas.json');
                },
                child: const Text('mascotas'),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              print('あああ${state.memo}');
              print('いいい${state.icon}');

              stateNotifier.addFireStore();
            },
            child: const Text('登録'),
          )
        ],
      ),
    );
  }
}
