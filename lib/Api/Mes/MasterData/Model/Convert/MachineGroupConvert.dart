part of '../Dto/MachineGroup.dart';

MachineGroupAggregateDto _$MachineGroupAggregateFromJson(Map<String, dynamic> json) =>
    MachineGroupAggregateDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.Name.key] as String?,
      $enumDecodeNullable(_$MonitoringTypeEnumMap, json[ApiJsonKey.MonitoringType.key]),
      $enumDecodeNullable(_$DataTypeEnumMap, json[ApiJsonKey.DataType.key]),
      $enumDecodeNullable(_$PASSaveDataTypeEnumMap, json[ApiJsonKey.PasDataType.key]),
      (json[ApiJsonKey.MainMachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineNumber.key] as num?)?.toInt(),
      $enumDecodeNullable(_$ProcessTypeEnumMap, json[ApiJsonKey.ProcessType.key]),
      (json[ApiJsonKey.MachineOrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.AttachedMachines.key] as List<dynamic>?)
          ?.map((e) => MachineGroupLineDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MachineGroupAggregateToJson(MachineGroupAggregateDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(
      ApiJsonKey.MonitoringType.key, _$MonitoringTypeEnumMap[instance._monitoringType]);
  writeNotNull(ApiJsonKey.DataType.key, _$DataTypeEnumMap[instance.dataType]);
  writeNotNull(ApiJsonKey.PasDataType.key, _$PASSaveDataTypeEnumMap[instance._pasDataType]);
  writeNotNull(ApiJsonKey.MainMachineId.key, instance._mainMachineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.MachineNumber.key, instance._machineNumber);
  writeNotNull(ApiJsonKey.ProcessType.key, _$ProcessTypeEnumMap[instance._processType]);
  writeNotNull(ApiJsonKey.MachineOrderIndex.key, instance._machineOrderIndex);
  writeNotNull(ApiJsonKey.AttachedMachines.key, instance._attachedMachines);
  return val;
}

const _$MonitoringTypeEnumMap = {
  MonitoringType.ProductionCondition: 'ProductionCondition',
  MonitoringType.InjectionCondition: 'InjectionCondition',
};

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
  DataType.YDHopper: 'YDHopper',
  DataType.HOT3TempController: 'HOT3TempController',
  DataType.ZigBeeMSInjection: 'ZigBeeMSInjection',
  DataType.ZigBeeCount: 'ZigBeeCount',
  DataType.MSFactoryCondition: 'MSFactoryCondition',
};

const _$PASSaveDataTypeEnumMap = {
  PASSaveDataType.None: 'None',
  PASSaveDataType.Injection: 'Injection',
};

const _$ProcessTypeEnumMap = {
  ProcessType.Molding: 'Molding',
  ProcessType.Assembly: 'Assembly',
  ProcessType.Handwork: 'Handwork',
  ProcessType.Inspection: 'Inspection',
  ProcessType.Press: 'Press',
  ProcessType.Cutting: 'Cutting',
  ProcessType.Painting: 'Painting',
  ProcessType.Blending: 'Blending',
  ProcessType.Custom: 'Custom',
};

MachineGroupSummaryDto _$MachineGroupSummaryFromJson(Map<String, dynamic> json) =>
    MachineGroupSummaryDto(
      (json[ApiJsonKey.GroupId.key] as num?)?.toInt(),
      json[ApiJsonKey.GroupName.key] as String?,
      $enumDecodeNullable(_$MonitoringTypeEnumMap, json[ApiJsonKey.MainMonitoringType.key]),
      $enumDecodeNullable(_$DataTypeEnumMap, json[ApiJsonKey.MainDataType.key]),
      $enumDecodeNullable(_$PASSaveDataTypeEnumMap, json[ApiJsonKey.MainPasDataType.key]),
      (json[ApiJsonKey.MainMachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MainMachineCode.key] as String?,
      json[ApiJsonKey.MainMachineName.key] as String?,
      (json[ApiJsonKey.MainMachineNumber.key] as num?)?.toInt(),
      $enumDecodeNullable(_$ProcessTypeEnumMap, json[ApiJsonKey.MainProcessType.key]),
      (json[ApiJsonKey.MainMachineOrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      $enumDecodeNullable(
          _$MonitoringTypeEnumMap, json[ApiJsonKey.AttachedMonitoringType.key]),
      $enumDecodeNullable(_$DataTypeEnumMap, json[ApiJsonKey.AttachedDataType.key]),
      $enumDecodeNullable(
          _$PASSaveDataTypeEnumMap, json[ApiJsonKey.AttachedPasDataType.key]),
      (json[ApiJsonKey.AttachedMachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.AttachedMachineCode.key] as String?,
      json[ApiJsonKey.AttachedMachineName.key] as String?,
      (json[ApiJsonKey.AttachedMachineNumber.key] as num?)?.toInt(),
      $enumDecodeNullable(_$ProcessTypeEnumMap, json[ApiJsonKey.AttachedProcessType.key]),
      (json[ApiJsonKey.AttachedMachineOrderIndex.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$MachineGroupSummaryToJson(MachineGroupSummaryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.GroupId.key, instance._groupId);
  writeNotNull(ApiJsonKey.GroupName.key, instance._groupName);
  writeNotNull(ApiJsonKey.MainMonitoringType.key,
      _$MonitoringTypeEnumMap[instance._mainMonitoringType]);
  writeNotNull(ApiJsonKey.MainDataType.key, _$DataTypeEnumMap[instance._mainDataType]);
  writeNotNull(
      ApiJsonKey.MainPasDataType.key, _$PASSaveDataTypeEnumMap[instance._mainPasDataType]);
  writeNotNull(ApiJsonKey.MainMachineId.key, instance._mainMachineId);
  writeNotNull(ApiJsonKey.MainMachineCode.key, instance._mainMachineCode);
  writeNotNull(ApiJsonKey.MainMachineName.key, instance._mainMachineName);
  writeNotNull(ApiJsonKey.MainMachineNumber.key, instance._mainMachineNumber);
  writeNotNull(
      ApiJsonKey.MainProcessType.key, _$ProcessTypeEnumMap[instance._mainProcessType]);
  writeNotNull(ApiJsonKey.MainMachineOrderIndex.key, instance._mainMachineOrderIndex);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.AttachedMonitoringType.key,
      _$MonitoringTypeEnumMap[instance._attachedMonitoringType]);
  writeNotNull(
      ApiJsonKey.AttachedDataType.key, _$DataTypeEnumMap[instance._attachedDataType]);
  writeNotNull(ApiJsonKey.AttachedPasDataType.key,
      _$PASSaveDataTypeEnumMap[instance._attachedPasDataType]);
  writeNotNull(ApiJsonKey.AttachedMachineId.key, instance._attachedMachineId);
  writeNotNull(ApiJsonKey.AttachedMachineCode.key, instance._attachedMachineCode);
  writeNotNull(ApiJsonKey.AttachedMachineName.key, instance._attachedMachineName);
  writeNotNull(ApiJsonKey.AttachedMachineNumber.key, instance._attachedMachineNumber);
  writeNotNull(ApiJsonKey.AttachedProcessType.key,
      _$ProcessTypeEnumMap[instance._attachedProcessType]);
  writeNotNull(ApiJsonKey.AttachedMachineOrderIndex.key, instance._attachedMachineOrderIndex);
  return val;
}

MachineGroupLineDto _$MachineGroupLineDtoFromJson(Map<String, dynamic> json) =>
    MachineGroupLineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.GroupId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$MonitoringTypeEnumMap, json[ApiJsonKey.MonitoringType.key]),
      $enumDecodeNullable(_$DataTypeEnumMap, json[ApiJsonKey.DataType.key]),
      $enumDecodeNullable(_$PASSaveDataTypeEnumMap, json[ApiJsonKey.PasDataType.key]),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineNumber.key] as num?)?.toInt(),
      $enumDecodeNullable(_$ProcessTypeEnumMap, json[ApiJsonKey.ProcessType.key]),
      (json[ApiJsonKey.MachineOrderIndex.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$MachineGroupLineDtoToJson(MachineGroupLineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.GroupId.key, instance._groupId);
  writeNotNull(
      ApiJsonKey.MonitoringType.key, _$MonitoringTypeEnumMap[instance._monitoringType]);
  writeNotNull(ApiJsonKey.DataType.key, _$DataTypeEnumMap[instance.dataType]);
  writeNotNull(ApiJsonKey.PasDataType.key, _$PASSaveDataTypeEnumMap[instance._pasDataType]);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.MachineNumber.key, instance._machineNumber);
  writeNotNull(ApiJsonKey.ProcessType.key, _$ProcessTypeEnumMap[instance._processType]);
  writeNotNull(ApiJsonKey.MachineOrderIndex.key, instance._machineOrderIndex);
  return val;
}
