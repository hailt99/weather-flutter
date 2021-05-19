import 'package:dio/dio.dart';
import 'dart:async';

class HttpClient {
  static BaseOptions _options = new BaseOptions(
    baseUrl: "http://172.16.0.94:8001",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  static Dio _dio = Dio(_options);

  HttpClient._internal() {
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  static final HttpClient instance = HttpClient._internal();

  Dio get dio => _dio;
}
