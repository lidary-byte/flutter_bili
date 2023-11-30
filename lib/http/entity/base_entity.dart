import 'package:flutter_bili/generated/json/base/json_convert_content.dart';
import 'package:flutter_bili/http/bili_error.dart';

class BaseEntity<T> {
  int? code;
  String? message;
  T? data;

  BaseEntity({this.code, this.message, this.data});

  BaseEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];

    ///  请求成功
    if (code == 0) {
      if (json['data'] != null && json['data'] != 'null') {
        data = JsonConvert.fromJsonAsT<T>(json['data']);
      }
    } else {
      message = errorInfo[code] ?? message;
    }
  }

  bool get isSuccess => code == 0 || code == 200;
}
