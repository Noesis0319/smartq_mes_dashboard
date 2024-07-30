part of '../Dto/DataMachineSettingDetail.dart';

DataMachineSettingDetailDto _$DataMachineSettingDetailDtoFromJson(Map<String, dynamic> json) =>
    DataMachineSettingDetailDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineNumber.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineNumber.key] as num?)?.toInt(),
      json[ApiJsonKey.LineName.key] as String?,
      (json[ApiJsonKey.CollectionGroupId.key] as num?)?.toInt(),
      json[ApiJsonKey.CollectionGroupName.key] as String?,
      $enumDecodeNullable(_$DataTypeEnumMap, json[ApiJsonKey.CollectionGroupDataType.key]),
      $enumDecodeNullable(_$SaveMethodEnumMap, json[ApiJsonKey.CollectionGroupSaveMethod.key]),
      json[ApiJsonKey.CollectionGroupPivotElement.key] as String?,
      (json[ApiJsonKey.CollectionGroupDuration.key] as num?)?.toInt(),
      (json[ApiJsonKey.CollectorId.key] as num?)?.toInt(),
      json[ApiJsonKey.CollectorName.key] as String?,
      json[ApiJsonKey.CollectorUseHostName.key] as bool?,
      json[ApiJsonKey.CollectorHostName.key] as String?,
      json[ApiJsonKey.CollectorServerIp.key] as String?,
      (json[ApiJsonKey.CollectorServerPort.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataMachineSettingDetailDtoToJson(DataMachineSettingDetailDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance.machineName);
  writeNotNull(ApiJsonKey.MachineNumber.key, instance._machineNumber);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.LineNumber.key, instance._lineNumber);
  writeNotNull(ApiJsonKey.LineName.key, instance._lineName);
  writeNotNull(ApiJsonKey.CollectionGroupId.key, instance._collectionGroupId);
  writeNotNull(ApiJsonKey.CollectionGroupName.key, instance._collectionGroupName);
  writeNotNull(ApiJsonKey.CollectionGroupDataType.key, instance._collectionGroupDataType);
  writeNotNull(ApiJsonKey.CollectionGroupSaveMethod.key, instance._collectionGroupSaveMethod);
  writeNotNull(ApiJsonKey.CollectionGroupPivotElement.key, instance._collectionGroupPivotElement);
  writeNotNull(ApiJsonKey.CollectionGroupDuration.key, instance._collectionGroupDuration);
  writeNotNull(ApiJsonKey.CollectorId.key, instance._collectorId);
  writeNotNull(ApiJsonKey.CollectorName.key, instance._collectorName);
  writeNotNull(ApiJsonKey.CollectorUseHostName.key, instance._collectorUseHostName);
  writeNotNull(ApiJsonKey.CollectorHostName.key, instance._collectorHostName);
  writeNotNull(ApiJsonKey.CollectorServerIp.key, instance._collectorServerIp);
  writeNotNull(ApiJsonKey.CollectorServerPort.key, instance._collectorServerPort);
  return val;
}

const _$DataTypeEnumMap = {
  DataType.None: 'None',
  DataType.MSInjection: 'MSInjection',
  DataType.MSHopper: 'MSHopper',
  DataType.MSCoolingTower: 'MSCoolingTower',
  DataType.MSChiller: 'MSChiller',
  DataType.Count: 'Count',
  DataType.MTHeater: 'MTHeater',
  DataType.XNHotRunner: 'XNHotRunner',
  DataType.MachineCount: 'MachineCount',
  DataType.MSDoubleInjection: 'MSDoubleInjection',
  DataType.YDHopper: 'HOT3TempController',
  DataType.ZigBeeMSInjection: 'ZigBeeMSInjection',
  DataType.ZigBeeCount: 'ZigBeeCount',
  DataType.MSFactoryCondition: 'MSFactoryCondition',
};

const _$SaveMethodEnumMap = {
  SaveMethod.None: 'None',
  SaveMethod.PivotElement: 'PivotElement',
  SaveMethod.Duration: 'Duration',
};
