import 'package:dio/dio.dart';
import 'package:flutter_bili/utils/global_util.dart';

/// 参数签名
class RequestSignInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var a = options.data;
    logger.d('a ------------ $a');
    super.onRequest(options, handler);
  }
}
