import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/repository/schedule_repository.dart';
import 'package:share_house/notifires/login_notifier/login_notifer.dart';
import 'package:share_house/pages/schedule_add_page/add_notifier.dart';

class ScheduleAddPage extends ConsumerWidget {
  const ScheduleAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var stateNotifier = ref.watch(scheduleAddNotifierProvider.notifier);
    final userState = ref.watch(loginNotifierProvider);
    String? name;
    String? memo;
    String? icon;

    return Scaffold(
      appBar: AppBar(
        title: const Text('スケジュールの追加'),
      ),
      body: Column(
        children: [
          Text(userState.userName ?? ''),
          TextFormField(
            onChanged: (value) {
              memo = value;
            },
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  icon = 'assets/10484-heart-fluttering.json';
                },
                child: const Text('heart'),
              ),
              TextButton(
                onPressed: () {
                  icon = 'assets/119879-mascotas-aseguradas.json';
                },
                child: const Text('mascotas'),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              name = userState.userName;
              stateNotifier.addFireStore(memo, icon, name);
              ref.refresh(scheduleProvider);
              Navigator.pop(context);
            },
            child: const Text('登録'),
          )
        ],
      ),
    );
  }
}
