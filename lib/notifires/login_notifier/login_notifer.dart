import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:share_house/models/entity/user/user.dart';

final loginNotifierProvider =
    StateNotifierProvider<LoginNotifier, LoginUser>((ref) => LoginNotifier());

class LoginNotifier extends StateNotifier<LoginUser> {
  LoginNotifier() : super(const LoginUser());

  //ここにlogin周りの処理を書く

  //ログインした上でログインしたユーザーデータを作る
  Future<bool> login() async {
    final res = await signInWithGoogle();
    if (res) {
      //登録したユーザーデータが見れる
      final user = FirebaseAuth.instance.currentUser;

      if (user == null) {
        return true;
      }
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .set(<String, dynamic>{
        'name': user.displayName,
        'email': user.email,
      });
      String userName = FirebaseAuth.instance.currentUser?.displayName ?? "";
      state = state.copyWith(userName: userName);
      return true;
    }
    return false;
  }

  //Googleサインインで成功するとtrueを返す。
  Future<bool> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return false;
      }

      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      return true;
    } catch (e) {
      log('$e');
      return false;
    }
  }
}
