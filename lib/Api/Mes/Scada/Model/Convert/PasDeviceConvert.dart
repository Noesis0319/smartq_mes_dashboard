part of '../Dto/PasDevice.dart';

PasDeviceDto _$PasDeviceDtoFromJson(Map<String, dynamic> json) => PasDeviceDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.Name.key] as String?,
      (json[ApiJsonKey.Number.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineNumber.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.LineCode.key] as String?,
      json[ApiJsonKey.LineName.key] as String?,
      (json[ApiJsonKey.LineNumber.key] as num?)?.toInt(),
      json[ApiJsonKey.ProtocolType.key] as String?,
      json[ApiJsonKey.SaveDataType.key] as String?,
      json[ApiJsonKey.IpAddress.key] as String?,
      (json[ApiJsonKey.Port.key] as num?)?.toInt(),
      json[ApiJsonKey.Path.key] as String?,
      json[ApiJsonKey.ServerId.key] as String?,
      json[ApiJsonKey.ServerPassword.key] as String?,
      json[ApiJsonKey.OpcSecurityMode.key] as String?,
      json[ApiJsonKey.OpcSecurityAlgorithm.key] as String?,
      json[ApiJsonKey.SavingMethod.key] as String?,
      json[ApiJsonKey.ReferenceFieldName.key] as String?,
      (json[ApiJsonKey.IntervalSeconds.key] as num?)?.toInt(),
      (json[ApiJsonKey.DataFields.key] as List<dynamic>?)
          ?.map((e) => PasDataFieldDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PasDeviceDtoToJson(PasDeviceDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(ApiJsonKey.Number.key, instance._number);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.MachineNumber.key, instance._machineNumber);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.LineCode.key, instance._lineCode);
  writeNotNull(ApiJsonKey.LineName.key, instance._lineName);
  writeNotNull(ApiJsonKey.LineNumber.key, instance._lineNumber);
  writeNotNull(ApiJsonKey.ProtocolType.key, instance._protocolType);
  writeNotNull(ApiJsonKey.SaveDataType.key, instance._saveDataType);
  writeNotNull(ApiJsonKey.IpAddress.key, instance._ipAddress);
  writeNotNull(ApiJsonKey.Port.key, instance._port);
  writeNotNull(ApiJsonKey.Path.key, instance._path);
  writeNotNull(ApiJsonKey.ServerId.key, instance._serverId);
  writeNotNull(ApiJsonKey.ServerPassword.key, instance._serverPassword);
  writeNotNull(ApiJsonKey.OpcSecurityMode.key, instance._opcSecurityMode);
  writeNotNull(ApiJsonKey.OpcSecurityAlgorithm.key, instance._opcSecurityAlgorithm);
  writeNotNull(ApiJsonKey.SavingMethod.key, instance._savingMethod);
  writeNotNull(ApiJsonKey.ReferenceFieldName.key, instance._referenceFieldName);
  writeNotNull(ApiJsonKey.IntervalSeconds.key, instance._intervalSeconds);
  writeNotNull(ApiJsonKey.DataFields.key, instance._dataFields);
  return val;
}
