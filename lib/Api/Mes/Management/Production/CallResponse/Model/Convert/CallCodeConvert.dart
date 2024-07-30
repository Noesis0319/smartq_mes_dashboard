
part of '../Dto/CallCode.dart';

CallCodeDto _$CallCodeDtoFromJson(Map<String, dynamic> json) => CallCodeDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.LineCode.key] as String?,
      json[ApiJsonKey.LineName.key] as String?,
      json[ApiJsonKey.Reason.key] as String?,
      json[ApiJsonKey.Type.key] as String?,
  $enumDecodeNullable(_$CallSeverityEnumMap, json[ApiJsonKey.Severity.key]),
      (json[ApiJsonKey.OrderIndex.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$CallCodeDtoToJson(CallCodeDto instance) {
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
  writeNotNull(ApiJsonKey.Reason.key, instance._reason);
  writeNotNull(ApiJsonKey.Type.key, instance._type);
  writeNotNull(ApiJsonKey.Severity.key, instance._severity);
  writeNotNull(ApiJsonKey.OrderIndex.key, instance._orderIndex);
  return val;
}
const _$CallSeverityEnumMap = {
  CallSeverity.High: 'High',
  CallSeverity.Low: 'Low',
};