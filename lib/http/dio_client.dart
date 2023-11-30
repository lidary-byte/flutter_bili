import 'package:dio/dio.dart';
import 'package:flutter_bili/http/entity/base_entity.dart';
import 'package:flutter_bili/http/request_sign_interceptor.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  final Dio _dio = Dio();

  factory DioClient() {
    return _instance;
  }

  DioClient._internal() {
    _dio.options
      ..baseUrl = 'https://api.bilibili.com/x/'
      ..headers = {
        'Accept': 'application/json',
        'User-Agent':
            'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36 Edg/119.0.0.0',
        'cookie':
            '''i-wanna-go-back=-1; buvid3=59D094A6-66A6-04D5-7A9B-3226E09DE4E784247infoc; b_nut=1669947884; _uuid=D3296A9C-C42E-AFAD-A97C-410101A88D659E84772infoc; rpdid=|(kkkJl~Rl0J'uYYmmR~)mk; buvid_fp_plain=undefined; b_ut=5; nostalgia_conf=-1; is-2022-channel=1; CURRENT_QUALITY=80; buvid4=F31DBE36-E046-E764-14FE-9BB65B7C31B985100-022120210-o4%2BDnTqteS8oxFQA0ivtvQ%3D%3D; CURRENT_FNVAL=4048; FEED_LIVE_VERSION=V8; header_theme_version=CLOSE; enable_web_push=DISABLE; home_feed_column=5; DedeUserID=114003662; DedeUserID__ckMd5=43132e246cacdcf0; fingerprint=9f6c612319535e3c46c475d35ea2de05; LIVE_BUVID=AUTO5417001051465082; PVID=1; SESSDATA=b8b954a1%2C1716802829%2C9fcda%2Ab2CjCzsDR6d8G6up8e6FwmCkAYfwBASpYMiljRrn3eRzflC7qAqou5a0S5mCFxTIgWZYUSVlFId213blF3UTNqTF9BY2dFVzJHcldLRVJKMmtPQ193Yi00ZDZFNTBJLUZMQnhEbW93NVFPM3JRUGNKWTJxaGt2Q21BcG44SUF4eVZKVVdaaElUY0ZRIIEC; bili_jct=9ec254673b34361cd12322aad392461e; sid=87k12wff; bp_video_offset_114003662=869354067092045830; innersign=0; b_lsid=94EE4463_18C1EC244D7; buvid_fp=59D094A6-66A6-04D5-7A9B-3226E09DE4E784247infoc; browser_resolution=1486-774'''
      }
      ..connectTimeout = const Duration(seconds: 10)
      ..receiveTimeout = const Duration(seconds: 30);
    _dio.interceptors
      ..add(LogInterceptor(requestBody: true, responseBody: true));
    // ..add(RequestSignInterceptor());
    // ..add(LoginInterceptors());
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
