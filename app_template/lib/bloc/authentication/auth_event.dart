// import 'package:real_world/models/user_model.dart';  // 이게 구현 안되서 에러가 발생합니다.

abstract class AuthEvent {}

class AuthLogin extends AuthEvent {
  UserModel user;

  AuthLogin({
    required this.user,
  });
}

class AuthLogout extends AuthEvent {}

class AuthGetCurrentUser extends AuthEvent {}
