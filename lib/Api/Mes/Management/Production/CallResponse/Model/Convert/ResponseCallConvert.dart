
part of '../Dto/ResponseCall.dart';

CallResponseDto _$CallResponseDtoFromJson(Map<String, dynamic> json) =>
    CallResponseDto(
      json[ApiJsonKey.Id.key],
      json[ApiJsonKey.LineId.key],
      json[ApiJsonKey.LineCode.key] as String?,
      json[ApiJsonKey.LineName.key] as String?,
      json[ApiJsonKey.MachineId.key],
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      json[ApiJsonKey.ManagerId.key],
      json[ApiJsonKey.ManagerCode.key] as String?,
      json[ApiJsonKey.ManagerName.key] as String?,
      json[ApiJsonKey.DateTimeCreated.key] as String?,
      json[ApiJsonKey.ResponseTime.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      json[ApiJsonKey.CallCodeId.key],
      json[ApiJsonKey.CallReason.key] as String?,
      json[ApiJsonKey.CallType.key] as String?,
      $enumDecodeNullable(_$CallSeverityEnumMap, json[ApiJsonKey.CallSeverity.key]),
      json[ApiJsonKey.ReponseCodeId.key],
      json[ApiJsonKey.ResponseMethod.key] as String?,
      json[ApiJsonKey.ResponseType.key] as String?,
    );

Map<String, dynamic> _$CallResponseDtoToJson(CallResponseDto instance) {
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
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance._managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance._managerName);
  writeNotNull(ApiJsonKey.DateTimeCreated.key, instance._dateTimeCreated);
  writeNotNull(ApiJsonKey.ResponseTime.key, instance._responseTime);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.CallCodeId.key, instance._callCodeId);
  writeNotNull(ApiJsonKey.CallReason.key, instance._callReason);
  writeNotNull(ApiJsonKey.CallType.key, instance._callType);
  writeNotNull(ApiJsonKey.CallSeverity.key, instance._callSeverity);
  writeNotNull(ApiJsonKey.ReponseCodeId.key, instance._responseCodeId);
  writeNotNull(ApiJsonKey.ResponseMethod.key, instance._responseMethod);
  writeNotNull(ApiJsonKey.ResponseType.key, instance._responseType);
  return val;
}
const _$CallSeverityEnumMap = {
  CallSeverity.High: 'High',
  CallSeverity.Low: 'Low',
};