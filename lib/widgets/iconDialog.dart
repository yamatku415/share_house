import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:share_house/pages/schedule_add_page/add_notifier.dart';

class SimpleDialogSample extends ConsumerWidget {
  SimpleDialogSample({Key? key}) : super(key: key);

  String? icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var stateNotifier = ref.read(scheduleAddNotifierProvider.notifier);

    return SimpleDialog(
      title: const Text(
        'アイコンを選択してください',
        style: TextStyle(fontSize: 16),
      ),
      children: [
        SimpleDialogOption(
          child: Lottie.asset('assets/119879-mascotas-aseguradas.json'),
          onPressed: () {
            icon = 'assets/119879-mascotas-aseguradas.json';

            stateNotifier.set(icon!);

            Navigator.pop(
              context,
            );
          },
        ),
        SimpleDialogOption(
          child: Lottie.asset('assets/125696-please.json'),
          onPressed: () {
            icon = 'assets/125696-please.json';

            stateNotifier.set(icon!);

            Navigator.pop(
              context,
            );
          },
        ),
        SimpleDialogOption(
          child: Lottie.asset('assets/118903-alcohol.json'),
          onPressed: () {
            icon = 'assets/118903-alcohol.json';

            stateNotifier.set(icon!);

            Navigator.pop(
              context,
            );
          },
        ),
        SimpleDialogOption(
          child: Lottie.asset('assets/12690-love-story.json'),
          onPressed: () {
            icon = 'assets/12690-love-story.json';

            stateNotifier.set(icon!);

            Navigator.pop(
              context,
            );
          },
        ),
        SimpleDialogOption(
          child: Lottie.asset('assets/72765-work-from-home.json'),
          onPressed: () {
            icon = 'assets/72765-work-from-home.json';

            stateNotifier.set(icon!);

            Navigator.pop(
              context,
            );
          },
        ),
      ],
    );
  }
}
