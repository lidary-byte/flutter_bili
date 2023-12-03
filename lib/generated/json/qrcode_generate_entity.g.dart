import 'package:flutter_bili/generated/json/base/json_convert_content.dart';
import 'package:flutter_bili/http/entity/qrcode_generate_entity.dart';

QrcodeGenerateEntity $QrcodeGenerateEntityFromJson(Map<String, dynamic> json) {
  final QrcodeGenerateEntity qrcodeGenerateEntity = QrcodeGenerateEntity();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    qrcodeGenerateEntity.url = url;
  }
  final String? qrcodeKey = jsonConvert.convert<String>(json['qrcode_key']);
  if (qrcodeKey != null) {
    qrcodeGenerateEntity.qrcodeKey = qrcodeKey;
  }
  return qrcodeGenerateEntity;
}

Map<String, dynamic> $QrcodeGenerateEntityToJson(QrcodeGenerateEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  data['qrcode_key'] = entity.qrcodeKey;
  return data;
}

extension QrcodeGenerateEntityExtension on QrcodeGenerateEntity {
  QrcodeGenerateEntity copyWith({
    String? url,
    String? qrcodeKey,
  }) {
    return QrcodeGenerateEntity()
      ..url = url ?? this.url
      ..qrcodeKey = qrcodeKey ?? this.qrcodeKey;
  }
}