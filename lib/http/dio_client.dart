import 'package:dio/dio.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  final Dio _dio = Dio();

  Dio get dio => _dio;

  factory DioClient() {
    return _instance;
  }

  DioClient._internal() {
    _dio.options
      ..baseUrl = 'https://e.coding.net/open-api/'
      ..headers = {'Accept': 'application/json'};
    _dio.interceptors
      .add(LogInterceptor(requestBody: true, responseBody: true));
      // ..add(LoginInterceptors());
  }


}
