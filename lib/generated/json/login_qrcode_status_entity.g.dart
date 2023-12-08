import 'package:flutter_bili/generated/json/base/json_convert_content.dart';
import 'package:flutter_bili/http/entity/login_qrcode_status_entity.dart';

LoginQrcodeStatusEntity $LoginQrcodeStatusEntityFromJson(
    Map<String, dynamic> json) {
  final LoginQrcodeStatusEntity loginQrcodeStatusEntity = LoginQrcodeStatusEntity();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    loginQrcodeStatusEntity.url = url;
  }
  final String? refreshToken = jsonConvert.convert<String>(
      json['refresh_token']);
  if (refreshToken != null) {
    loginQrcodeStatusEntity.refreshToken = refreshToken;
  }
  final int? timestamp = jsonConvert.convert<int>(json['timestamp']);
  if (timestamp != null) {
    loginQrcodeStatusEntity.timestamp = timestamp;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    loginQrcodeStatusEntity.code = code;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    loginQrcodeStatusEntity.message = message;
  }
  return loginQrcodeStatusEntity;
}

Map<String, dynamic> $LoginQrcodeStatusEntityToJson(
    LoginQrcodeStatusEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  data['refresh_token'] = entity.refreshToken;
  data['timestamp'] = entity.timestamp;
  data['code'] = entity.code;
  data['message'] = entity.message;
  return data;
}

extension LoginQrcodeStatusEntityExtension on LoginQrcodeStatusEntity {
  LoginQrcodeStatusEntity copyWith({
    String? url,
    String? refreshToken,
    int? timestamp,
    int? code,
    String? message,
  }) {
    return LoginQrcodeStatusEntity()
      ..url = url ?? this.url
      ..refreshToken = refreshToken ?? this.refreshToken
      ..timestamp = timestamp ?? this.timestamp
      ..code = code ?? this.code
      ..message = message ?? this.message;
  }
}