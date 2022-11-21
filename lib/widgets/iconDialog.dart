import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:share_house/pages/schedule_add_page/add_notifier.dart';

class SimpleDialogSample extends ConsumerWidget {
  SimpleDialogSample({Key? key}) : super(key: key);

  String? icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var stateNotifier = ref.watch(scheduleAddNotifierProvider);

    return SimpleDialog(
      title: Text('選んでね'),
      children: [
        SimpleDialogOption(
          child: Lottie.asset('assets/119879-mascotas-aseguradas.json'),
          onPressed: () {
            icon = 'assets/119879-mascotas-aseguradas.json';

            ref.read(scheduleAddNotifierProvider.notifier).set(icon!);

            Navigator.pop(
              context,
            );
          },
        ),
        SimpleDialogOption(
          child: Text('選択肢2'),
          onPressed: () {
            Navigator.pop(context, '2が選択されました');
          },
        )
      ],
    );
  }
}
