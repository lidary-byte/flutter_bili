import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_bili/constants/http_constants.dart';

/// 接口签名工具类
class HttpSign {
  static String appSign(Map<String, String> params) {
    params['appKey'] = HttpConstants.appKey;
    // 按照 key 重排参数
    Map<String, String> sortedParams = Map.fromEntries(
      params.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
    );
    // 序列化参数
    StringBuffer queryBuilder = StringBuffer();
    for (MapEntry<String, String> entry in sortedParams.entries) {
      if (queryBuilder.length > 0) {
        queryBuilder.write('&');
      }
      queryBuilder
        ..write(Uri.encodeComponent(entry.key))
        ..write('=')
        ..write(Uri.encodeComponent(entry.value));
    }
    return _generateMD5(queryBuilder.toString() + HttpConstants.appSec);
  }

  static String _generateMD5(String input) {
    try {
      var bytes = utf8.encode(input);
      var digest = md5.convert(bytes);
      return digest.toString();
    } catch (e) {
      return '';
    }
  }
}
