import 'package:flutter_bili/generated/json/base/json_convert_content.dart';
import 'package:flutter_bili/http/entity/captcha_entity.dart';

CaptchaEntity $CaptchaEntityFromJson(Map<String, dynamic> json) {
  final CaptchaEntity captchaEntity = CaptchaEntity();
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    captchaEntity.type = type;
  }
  final String? token = jsonConvert.convert<String>(json['token']);
  if (token != null) {
    captchaEntity.token = token;
  }
  final CaptchaGeetest? geetest = jsonConvert.convert<CaptchaGeetest>(
      json['geetest']);
  if (geetest != null) {
    captchaEntity.geetest = geetest;
  }
  final CaptchaTencent? tencent = jsonConvert.convert<CaptchaTencent>(
      json['tencent']);
  if (tencent != null) {
    captchaEntity.tencent = tencent;
  }
  return captchaEntity;
}

Map<String, dynamic> $CaptchaEntityToJson(CaptchaEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['type'] = entity.type;
  data['token'] = entity.token;
  data['geetest'] = entity.geetest?.toJson();
  data['tencent'] = entity.tencent?.toJson();
  return data;
}

extension CaptchaEntityExtension on CaptchaEntity {
  CaptchaEntity copyWith({
    String? type,
    String? token,
    CaptchaGeetest? geetest,
    CaptchaTencent? tencent,
  }) {
    return CaptchaEntity()
      ..type = type ?? this.type
      ..token = token ?? this.token
      ..geetest = geetest ?? this.geetest
      ..tencent = tencent ?? this.tencent;
  }
}

CaptchaGeetest $CaptchaGeetestFromJson(Map<String, dynamic> json) {
  final CaptchaGeetest captchaGeetest = CaptchaGeetest();
  final String? challenge = jsonConvert.convert<String>(json['challenge']);
  if (challenge != null) {
    captchaGeetest.challenge = challenge;
  }
  final String? gt = jsonConvert.convert<String>(json['gt']);
  if (gt != null) {
    captchaGeetest.gt = gt;
  }
  return captchaGeetest;
}

Map<String, dynamic> $CaptchaGeetestToJson(CaptchaGeetest entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['challenge'] = entity.challenge;
  data['gt'] = entity.gt;
  return data;
}

extension CaptchaGeetestExtension on CaptchaGeetest {
  CaptchaGeetest copyWith({
    String? challenge,
    String? gt,
  }) {
    return CaptchaGeetest()
      ..challenge = challenge ?? this.challenge
      ..gt = gt ?? this.gt;
  }
}

CaptchaTencent $CaptchaTencentFromJson(Map<String, dynamic> json) {
  final CaptchaTencent captchaTencent = CaptchaTencent();
  final String? appid = jsonConvert.convert<String>(json['appid']);
  if (appid != null) {
    captchaTencent.appid = appid;
  }
  return captchaTencent;
}

Map<String, dynamic> $CaptchaTencentToJson(CaptchaTencent entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['appid'] = entity.appid;
  return data;
}

extension CaptchaTencentExtension on CaptchaTencent {
  CaptchaTencent copyWith({
    String? appid,
  }) {
    return CaptchaTencent()
      ..appid = appid ?? this.appid;
  }
}