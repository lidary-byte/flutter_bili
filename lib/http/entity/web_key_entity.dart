import 'package:flutter_bili/generated/json/base/json_field.dart';
import 'package:flutter_bili/generated/json/web_key_entity.g.dart';
import 'dart:convert';
export 'package:flutter_bili/generated/json/web_key_entity.g.dart';

@JsonSerializable()
class WebKeyEntity {
	String? hash;
	String? key;

	WebKeyEntity();

	factory WebKeyEntity.fromJson(Map<String, dynamic> json) => $WebKeyEntityFromJson(json);

	Map<String, dynamic> toJson() => $WebKeyEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}