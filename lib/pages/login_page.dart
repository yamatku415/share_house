import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import '../notifires/login_notifier/login_notifer.dart';
import 'calender_page.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(loginNotifierProvider);
    final notifier = ref.watch(loginNotifierProvider.notifier);

    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userState.userName ?? 'ログインできてないよハゲ'),
            SignInButton(
              buttonType: ButtonType.google,
              onPressed: () async {
                if (await notifier.login()) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return CalenderPage();
                  }));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
