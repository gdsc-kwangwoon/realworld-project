import 'package:dio/dio.dart';
import 'package:real_world/interceptors/no_auth_interceptor.dart';
// import 'package:real_world/models/profile_model.dart'; // 이게 구현 안되서 에러가 발생합니다.

class ProfileRepository {
  Future<ProfileModel> getProfile(String username) async {
    Dio dio = Dio();
    dio.interceptors.add(NoAuthInterceptor());

    var res = await dio.get('/api/profiles/$username');

    return ProfileModel.fromJson(res.data['profile']);
  }
}
