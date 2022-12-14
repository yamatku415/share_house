import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/repository/schedule_repository.dart';
import 'package:share_house/notifires/login_notifier/login_notifer.dart';
import 'package:share_house/pages/schedule_add_page/add_notifier.dart';
import 'package:share_house/widgets/iconDialog.dart';

class ScheduleAddPage extends ConsumerWidget {
  const ScheduleAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var stateNotifier = ref.watch(scheduleAddNotifierProvider.notifier);
    var state = ref.watch(scheduleAddNotifierProvider);

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
              String memoValue = value;
              ref.read(scheduleAddNotifierProvider.notifier).setMemo(memoValue);
            },
          ),
          Row(
            children: [
              TextButton(
                onPressed: () async {
                  await showDialog<String>(
                      context: context,
                      builder: (_) {
                        return SimpleDialogSample();
                      });
                },
                child: const Text('アイコンを選択する'),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              icon = state.icon.toString();
              name = userState.userName;
              memo = state.memo.toString();

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
