import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class LoginUser with _$LoginUser {
  const factory LoginUser({
    String? userName,
  }) = _LoginUser;
}
