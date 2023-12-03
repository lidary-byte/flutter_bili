import 'package:flutter_bili/generated/json/base/json_field.dart';
import 'package:flutter_bili/generated/json/captcha_entity.g.dart';
import 'dart:convert';
export 'package:flutter_bili/generated/json/captcha_entity.g.dart';

@JsonSerializable()
class CaptchaEntity {
	String? type;
	String? token;
	CaptchaGeetest? geetest;
	CaptchaTencent? tencent;

	CaptchaEntity();

	factory CaptchaEntity.fromJson(Map<String, dynamic> json) => $CaptchaEntityFromJson(json);

	Map<String, dynamic> toJson() => $CaptchaEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CaptchaGeetest {
	String? challenge;
	String? gt;

	CaptchaGeetest();

	factory CaptchaGeetest.fromJson(Map<String, dynamic> json) => $CaptchaGeetestFromJson(json);

	Map<String, dynamic> toJson() => $CaptchaGeetestToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class CaptchaTencent {
	String? appid;

	CaptchaTencent();

	factory CaptchaTencent.fromJson(Map<String, dynamic> json) => $CaptchaTencentFromJson(json);

	Map<String, dynamic> toJson() => $CaptchaTencentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}