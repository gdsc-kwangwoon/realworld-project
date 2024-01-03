import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:real_world/constants/end_points.dart';

class NoAuthInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // base url 설정
    options.baseUrl = EndPoints.realworld;

    // 기타 헤더 작성
    options.headers['X-Requested-With'] = 'XMLHttpRequest';
    options.headers['Content-Type'] = 'application/json';

    // time-out 설정
    options.receiveTimeout = const Duration(seconds: 5);

    return handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    // Logging
    debugPrint(
      '[RES] [${response.requestOptions.method}] ${response.requestOptions.uri}',
    );
    return handler.next(response);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Logging
    debugPrint(
      '[ERR] [${err.requestOptions.method}] ${err.requestOptions.uri}',
    );
    debugPrint(
      '[ERR] code: ${err.response?.statusCode}',
    );

    super.onError(err, handler);
  }
}
