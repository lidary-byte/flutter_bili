import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bili/http/entity/base_entity.dart';
import 'package:path_provider/path_provider.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  final Dio _dio = Dio();
  late CookieManager cookieManager;

  factory DioClient() {
    return _instance;
  }

  DioClient._internal() {
    _dio.options
      ..baseUrl = 'https://api.bilibili.com/x/'
      ..headers = {
        'keep-alive': true,
        'Accept-Encoding': 'gzip',
        'Accept': 'application/json',
        'User-Agent':
            'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36 Edg/119.0.0.0',
      }
      ..connectTimeout = const Duration(seconds: 5)
      ..receiveTimeout = const Duration(seconds: 5)
      ..contentType = Headers.jsonContentType;
    _dio.interceptors.add(LogInterceptor(
            requestBody: false,
            responseBody: false,
            responseHeader: false,
            requestHeader: true))
        // ..add(RequestSignInterceptor())
        ;
  }

  Future init() async {
    if (kIsWeb) {
      cookieManager = CookieManager(CookieJar());
    } else {
      // cookie持久化
      var cookiePath =
          "${(await getApplicationSupportDirectory()).path}/.cookies/";
      cookieManager =
          CookieManager(PersistCookieJar(storage: FileStorage(cookiePath)));
    }
    // 如果没有cookie 请求一下b站主页保存一下cookie
    _dio.interceptors.add(cookieManager);
    if ((await cookieManager.cookieJar
            .loadForRequest(Uri.parse('https://www.bilibili.com')))
        .isEmpty) {
      try {
        _dio.get('https://www.bilibili.com');
      } catch (_) {}
    }
  }

  Future<BaseEntity<T>> get<T>(String path,
      {Map<String, dynamic>? params}) async {
    try {
      final Response response = await _dio.get(path, queryParameters: params);
      if (response.statusCode != 200) {
        return BaseEntity(
            code: response.statusCode, message: response.statusMessage);
      }
      return BaseEntity.fromJson(response.data);
    } on DioException catch (e) {
      return BaseEntity(code: -1, message: e.message);
    }
  }

  Future<BaseEntity<T>> post<T>(String path,
      {Map<String, dynamic>? data}) async {
    try {
      final Response response = await _dio.post(path, data: data);
      if (response.statusCode != 200) {
        return BaseEntity(
            code: response.statusCode, message: response.statusMessage);
      }
      return BaseEntity.fromJson(response.data);
    } on DioException catch (e) {
      return BaseEntity(code: -1, message: e.message);
    } on UnimplementedError catch (e) {
      return BaseEntity(code: -2, message: e.message);
    }
  }
}
