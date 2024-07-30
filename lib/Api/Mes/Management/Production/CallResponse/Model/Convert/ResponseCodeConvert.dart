
part of '../Dto/ResponseCode.dart';

ResponseCodeDto _$ResponseCodeDtoFromJson(Map<String, dynamic> json) =>
    ResponseCodeDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.LineCode.key] as String?,
      json[ApiJsonKey.LineName.key] as String?,
      json[ApiJsonKey.Method.key] as String?,
      json[ApiJsonKey.Type.key] as String?,
      (json[ApiJsonKey.OrderIndex.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResponseCodeDtoToJson(ResponseCodeDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }
  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.LineCode.key, instance._lineCode);
  writeNotNull(ApiJsonKey.LineName.key, instance._lineName);
  writeNotNull(ApiJsonKey.Method.key, instance._method);
  writeNotNull(ApiJsonKey.Type.key, instance._type);
  writeNotNull(ApiJsonKey.OrderIndex.key, instance._orderIndex);
  return val;
}
