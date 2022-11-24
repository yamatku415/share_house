import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/pages/calender_page/calender_page.dart';

import 'group_create_notifier.dart';

class GroupCreatePage extends ConsumerStatefulWidget {
  const GroupCreatePage({Key? key}) : super(key: key);

  @override
  _GroupCreatePageState createState() => _GroupCreatePageState();
}

class _GroupCreatePageState extends ConsumerState<GroupCreatePage> {
  String? groupId;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(groupCreateNotifierProvider.notifier);
    final stateN = ref.watch(groupCreateNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('グループIDを作成してください'),
      ),
      body: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              groupId = value;
              setState(() {});
            },
          ),
          Text('グループIDを"$groupId"で登録します'),
          TextButton(
              onPressed: () {
                state.setData(groupId!);

                Future.delayed(const Duration(milliseconds: 3000)).then((_) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return CalenderPage();
                  }));
                });
              },
              child: const Text('登録'))
        ],
      ),
    );
  }
}
