
part of '../Dto/ResponseUpdate.dart';

UpdateResponseDto _$UpdateResponseDtoFromJson(
        Map<String, dynamic> json) =>
    UpdateResponseDto(
      (json[ApiJsonKey.ReponseCodeId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ResponseTime.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
    );

Map<String, dynamic> _$UpdateResponseDtoToJson(
    UpdateResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }
  writeNotNull(ApiJsonKey.ReponseCodeId.key, instance._responseCodeId);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ResponseTime.key, instance._responseTime);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  return val;
}
