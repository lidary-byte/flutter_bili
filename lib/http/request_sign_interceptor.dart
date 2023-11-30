import 'package:dio/dio.dart';
import 'package:flutter_bili/utils/global_util.dart';

class RequestSignInterceptor extends QueuedInterceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    var a = options.data;
    logger.d('a ------------ $a');
  }
}
