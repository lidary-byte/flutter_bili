import 'package:flutter_bili/generated/json/base/json_convert_content.dart';
import 'package:flutter_bili/http/entity/web_key_entity.dart';

WebKeyEntity $WebKeyEntityFromJson(Map<String, dynamic> json) {
  final WebKeyEntity webKeyEntity = WebKeyEntity();
  final String? hash = jsonConvert.convert<String>(json['hash']);
  if (hash != null) {
    webKeyEntity.hash = hash;
  }
  final String? key = jsonConvert.convert<String>(json['key']);
  if (key != null) {
    webKeyEntity.key = key;
  }
  return webKeyEntity;
}

Map<String, dynamic> $WebKeyEntityToJson(WebKeyEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['hash'] = entity.hash;
  data['key'] = entity.key;
  return data;
}

extension WebKeyEntityExtension on WebKeyEntity {
  WebKeyEntity copyWith({
    String? hash,
    String? key,
  }) {
    return WebKeyEntity()
      ..hash = hash ?? this.hash
      ..key = key ?? this.key;
  }
}