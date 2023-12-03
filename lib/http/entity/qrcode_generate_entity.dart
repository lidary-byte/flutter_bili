import 'package:flutter_bili/generated/json/base/json_field.dart';
import 'package:flutter_bili/generated/json/qrcode_generate_entity.g.dart';
import 'dart:convert';
export 'package:flutter_bili/generated/json/qrcode_generate_entity.g.dart';

@JsonSerializable()
class QrcodeGenerateEntity {
	String? url;
	@JSONField(name: "qrcode_key")
	String? qrcodeKey;

	QrcodeGenerateEntity();

	factory QrcodeGenerateEntity.fromJson(Map<String, dynamic> json) => $QrcodeGenerateEntityFromJson(json);

	Map<String, dynamic> toJson() => $QrcodeGenerateEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}