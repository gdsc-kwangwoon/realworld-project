import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:real_world/interceptors/auth_interceptor.dart';
import 'package:real_world/interceptors/no_auth_interceptor.dart';
// import 'package:real_world/models/user_model.dart'; // 이게 구현 안되서 에러가 발생합니다.

class AuthRepository {
  Future<UserModel> postLogin({
    required String email,
    required String password,
  }) async {
    Dio dio = Dio();
    dio.interceptors.add(NoAuthInterceptor());

    Map<String, dynamic> body = {
      'user': {
        'email': email,
        'password': password,
      }
    };

    var res = await dio.post(
      '/api/users/login',
      data: jsonEncode(body),
    );

    return UserModel.fromJson(res.data['user']);
  }

  Future<UserModel> postRegistr({
    required String email,
    required String password,
    required String username,
  }) async {
    Dio dio = Dio();
    dio.interceptors.add(NoAuthInterceptor());

    Map<String, dynamic> body = {
      'user': {
        'username': username,
        'email': email,
        'password': password,
      }
    };

    var res = await dio.post(
      '/api/users',
      data: jsonEncode(body),
    );

    return UserModel.fromJson(res.data['user']);
  }

  Future<UserModel> getCurrentUser() async {
    Dio dio = Dio();
    dio.interceptors.add(AuthInterceptor());

    var res = await dio.get('/api/user');

    return UserModel.fromJson(res.data['user']);
  }

  Future<UserModel> updateUser({
    required String email,
    required String password,
    required String username,
    String? bio,
  }) async {
    Dio dio = Dio();
    dio.interceptors.add(AuthInterceptor());

    Map<String, dynamic> body = {
      'user': {
        'username': username,
        'email': email,
        'password': password,
        'bio': bio,
      }
    };

    var res = await dio.put(
      '/api/user',
      data: jsonEncode(body),
    );

    return UserModel.fromJson(res.data['user']);
  }
}
