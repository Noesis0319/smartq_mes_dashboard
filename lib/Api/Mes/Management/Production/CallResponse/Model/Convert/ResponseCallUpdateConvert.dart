
part of '../Dto/ResponseCallUpdate.dart';

UpdateCallResponseDto _$UpdateCallResponseDtoFromJson(
    Map<String, dynamic> json) =>
    UpdateCallResponseDto(
      (json[ApiJsonKey.ReponseCodeId.key] as num?)?.toInt(),
      (json[ApiJsonKey.CallCodeId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ResponseTime.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
    );

Map<String, dynamic> _$UpdateCallResponseDtoToJson(
    UpdateCallResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }
  writeNotNull(ApiJsonKey.ReponseCodeId.key, instance._responseCodeId);
  writeNotNull(ApiJsonKey.CallCodeId.key, instance._callCodeId);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ResponseTime.key, instance._responseTime);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  return val;
}
