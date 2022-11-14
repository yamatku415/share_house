import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/repository/schedule_repository.dart';
import 'package:share_house/notifires/login_notifier/login_notifer.dart';
import 'package:share_house/pages/calender_page/calender_page.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(loginNotifierProvider);
    final notifier = ref.watch(loginNotifierProvider.notifier);
    final calenderNotifier = ref.watch(calenderNotifierProvider.notifier);

    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(userState.userName ?? '未ログイン状態'),
          SignInButton(
            buttonType: ButtonType.google,
            onPressed: () async {
              if (await notifier.login()) {
                // calenderNotifier.fetchScheduleList();

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CalenderPage();
                }));
              }
            },
          ),
        ],
      ),
    );
  }
}
