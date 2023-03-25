import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:relipos_touch/exception/exception.dart';

import 'http_method.dart';

class ServiceProvider {
  var dio = Dio();
  static String token = "";

  ServiceProvider() {
    dio.options.baseUrl = 'http://192.168.5.42:2202';
    // dio.options.connectTimeout = const Duration(seconds: 10);
    // dio.options.receiveTimeout = const Duration(milliseconds: 8000);
    dio.options.contentType = "application/json";

    // Attach some property on header from all requests
    dio.interceptors.add(QueuedInterceptorsWrapper(onRequest: (options, handler) {
      options.headers['JwtToken'] = ServiceProvider.token;
      handler.next(options);
    }));
  }

  Future<Response<T>> _request<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    try {
      options ??= Options();
      final response = await dio.request<T>(
        path,
        options: options.copyWith(
            headers: <String, dynamic>{'Authorization': 'JwtToken ${ServiceProvider.token}', ...?options.headers}),
        queryParameters: queryParameters,
        data: data,
      );
      final dt = response.data;
      final statusCode = response.statusCode ?? 0;
      if (dt != null && statusCode >= 200 && statusCode < 300) {
        final d = dt as Map<String, dynamic>;
        if (d['token'] != null) {
          debugPrint("RETURNED-TOKEN:" + (d['token'] as String));
          final token = d['JwtToken'] as String;
          if (token != '') {
            ServiceProvider.token = token;
          } else {
            debugPrint(
              'INVALID_TOKEN: $token, REQUEST: ${response.requestOptions}',
            );
          }
        }
        if (dt['Status'] == 2 || dt['Status'] == 3) {
          throw HttpErrorException(msg: dt['Exception_Message']);
        }
      }
      return response;
    } on DioError catch (e) {
      debugPrint('API ERROR: $e, DATA: ${e.response?.data}');
      if ((e.response?.statusCode ?? 0) == 502) {
        //TODO
      }
      if ((e.response?.statusCode ?? 0) == 401) {
        //TODO
      }
      rethrow;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Options checkOptions({required HttpMethod method, Options? options}) {
    options ??= Options(
      method: dio.options.method,
      headers: dio.options.headers,
      contentType: dio.options.contentType,
    );
    options.method = method.stringfy();
    return options;
  }

  Future<Response<T>> get<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        dynamic data,
        Options? options,
      }) async {
    return _request<T>(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.get,
        options: options,
      ),
    );
  }

  Future<Response<T>> put<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        dynamic data,
        Options? options,
      }) async {
    return _request(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.put,
        options: options,
      ),
    );
  }

  Future<Response<T>> post<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        dynamic data,
        Options? options,
      }) async {
    return _request(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.post,
        options: options,
      ),
    );
  }

  Future<Response<T>> delete<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        dynamic data,
        Options? options,
      }) async {
    return _request(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.delete,
        options: options,
      ),
    );
  }

  Future<Response<T>> patch<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        dynamic data,
        Options? options,
      }) async {
    return _request(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.patch,
        options: options,
      ),
    );
  }

  Future<dynamic> makeGet(String path,
      {Map<String, dynamic>? query,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onReceiveProgress}) async {
    try {
      var response = await dio.get(path,
          queryParameters: query, options: options, cancelToken: cancelToken, onReceiveProgress: onReceiveProgress);
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
      if (response.data != null) {
        if (response.data['Status'] == 1) {
          return response.data;
        } else if (response.data['Status'] == 2 || response.data['Status'] == 3) {
          throw HttpErrorException(msg: response.data['Exception_Message']);
        }
        return response.data;
      }
      throw Exception('Error');
    } catch (e) {
      rethrow;
    }
  }
}
