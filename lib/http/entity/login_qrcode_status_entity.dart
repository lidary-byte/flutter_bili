import 'package:flutter_bili/generated/json/base/json_field.dart';
import 'package:flutter_bili/generated/json/login_qrcode_status_entity.g.dart';
import 'dart:convert';
export 'package:flutter_bili/generated/json/login_qrcode_status_entity.g.dart';

@JsonSerializable()
class LoginQrcodeStatusEntity {
	String? url;
	@JSONField(name: "refresh_token")
	String? refreshToken;
	int? timestamp;
	int? code;
	String? message;

	LoginQrcodeStatusEntity();

	factory LoginQrcodeStatusEntity.fromJson(Map<String, dynamic> json) => $LoginQrcodeStatusEntityFromJson(json);

	Map<String, dynamic> toJson() => $LoginQrcodeStatusEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}