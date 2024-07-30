
part of '../Dto/InspectionMachineSituation.dart';

InspectionMachineSituationDto _$InspectionMachineSituationDtoFromJson(
        Map<String, dynamic> json) =>
    InspectionMachineSituationDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.Code.key] as String?,
      json[ApiJsonKey.Name.key] as String?,
      (json[ApiJsonKey.OrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.ShiftName.key] as String?,
      json[ApiJsonKey.RunningStatus.key] as String?,
      json[ApiJsonKey.CompletionRateAverage.key],
    );

Map<String, dynamic> _$InspectionMachineSituationDtoToJson(
    InspectionMachineSituationDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.Code.key, instance._code);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(ApiJsonKey.OrderIndex.key, instance._orderIndex);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.ShiftName.key, instance._shiftName);
  writeNotNull(ApiJsonKey.RunningStatus.key, instance._runningStatus);
  writeNotNull(ApiJsonKey.CompletionRateAverage.key, instance._completionRateAverage);
  return val;
}
