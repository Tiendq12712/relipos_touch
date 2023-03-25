import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ServiceProvider {
  var dio = Dio();
  static String token = "";

  ServiceProvider() {
    dio.options.baseUrl = 'http://192.168.5.42:2202';
    // dio.options.connectTimeout = 8000;
    // dio.options.receiveTimeout = 8000;
    dio.options.contentType = "application/json";

    // Attach some property on header from all requests
    // dio.interceptors
    //     .add(QueuedInterceptorsWrapper(onRequest: (options, handler) {
    //   options.headers['JwtToken'] = ServiceProvider.token;
    //   handler.next(options);
    // }));
  }

  Future<dynamic> makeGet(String path,
      {Map<String, dynamic>? query,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onReceiveProgress}) async {
    try {
      var response = await dio.get(path,
          queryParameters: query,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress);
      return response.data;
    } catch (e) {
      if (e is DioError) {
        if (e.response?.data != null) {
          debugPrint('error');
        }
      }
      rethrow;
    }
  }

  Future<dynamic> makePost(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      var response = await dio.post(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
      return response.data;
    } catch (e) {
      if (e is DioError) {
        if (e.response?.data != null) {
          debugPrint('error');
        }
      }
      rethrow;
    }
  }
}
