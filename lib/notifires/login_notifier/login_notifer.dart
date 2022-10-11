import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_house/models/entity/user.dart';

class LoginNotifier extends StateNotifier<User> {
  LoginNotifier(state) : super(const User(userName: ''));

  //ここにlogin周りの処理を書く

}
