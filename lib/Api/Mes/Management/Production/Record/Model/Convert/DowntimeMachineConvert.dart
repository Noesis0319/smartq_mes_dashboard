part of '../Dto/DowntimeMachine.dart';

DowntimeMachineDto _$DowntimeMachineDtoFromJson(Map<String, dynamic> json) => DowntimeMachineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.RecordId.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.LineCode.key] as String?,
      json[ApiJsonKey.LineName.key] as String?,
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
    );

Map<String, dynamic> _$DowntimeMachineDtoToJson(DowntimeMachineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.RecordId.key, instance._recordId);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.LineCode.key, instance._lineCode);
  writeNotNull(ApiJsonKey.LineName.key, instance._lineName);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  return val;
}
