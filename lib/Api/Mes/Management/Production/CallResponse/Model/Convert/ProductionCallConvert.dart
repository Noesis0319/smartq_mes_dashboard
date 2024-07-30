part of '../Dto/ProductionCall.dart';

ProductionCallDto _$ProductionCallDtoFromJson(Map<String, dynamic> json) => ProductionCallDto(
      json[ApiJsonKey.MachineId.key],
      json[ApiJsonKey.LineId.key],
      json[ApiJsonKey.CallId.key],
      json[ApiJsonKey.CallReasonName.key] as String?,
      json[ApiJsonKey.LineCode.key] as String?,
      (jsonDecode(json[ApiJsonKey.TargetManagers.key]) as List).map((e) => e as int).toList(),
      json[ApiJsonKey.LineName.key] as String?,
      json[ApiJsonKey.CallReasonCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.CallReasonId.key],
      json[ApiJsonKey.Memo.key] as String?,
      json[ApiJsonKey.Occurred.key] as String?,
      json[ApiJsonKey.CompanyCode.key],
    );

Map<String, dynamic> _$ProductionCallDtoToJson(ProductionCallDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.CallId.key, instance._callId);
  writeNotNull(ApiJsonKey.CallReasonName.key, instance._callReasonName);
  writeNotNull(ApiJsonKey.LineCode.key, instance._lineCode);
  writeNotNull(ApiJsonKey.TargetManagers.key, instance._targetManagers);
  writeNotNull(ApiJsonKey.LineName.key, instance._lineName);
  writeNotNull(ApiJsonKey.CallReasonCode.key, instance._callReasonCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.CallReasonId.key, instance._callReasonId);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.Occurred.key, instance._occurred);
  writeNotNull(ApiJsonKey.CompanyCode.key, instance._companyCode);
  return val;
}
