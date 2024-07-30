part of '../Dto/InspectionWorkHeader.dart';

InspectionWorkHeaderDto _$InspectionWorkHeaderDtoFromJson(Map<String, dynamic> json) => InspectionWorkHeaderDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.InspectionWorkNumber.key] as String?,
      json[ApiJsonKey.InspectionDate.key] as String?,
      $enumDecodeNullable(_$InspectionSuperCategoryEnumMap, json[ApiJsonKey.SuperCategory.key]),
      $enumDecodeNullable(_$InspectionTypeEnumMap, json[ApiJsonKey.InspectionType.key]),
      $enumDecodeNullable(_$InspectionMethodEnumMap, json[ApiJsonKey.InspectionMethod.key]),
      $enumDecodeNullable(_$InspectionQuantityTypeEnumMap, json[ApiJsonKey.QuantityType.key]),
      $enumDecodeNullable(_$InspectionLocationEnumMap, json[ApiJsonKey.InspectionLocation.key]),
      json[ApiJsonKey.StartTime.key] as String?,
      json[ApiJsonKey.EndTime.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      json[ApiJsonKey.IsPassed.key] as bool?,
      (json[ApiJsonKey.ResultCount.key] as num?)?.toInt(),
      (json[ApiJsonKey.PassCount.key] as num?)?.toInt(),
      (json[ApiJsonKey.FailCount.key] as num?)?.toInt(),
      (json[ApiJsonKey.NextInspectionNumber.key] as num?)?.toInt(),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      json[ApiJsonKey.ItemUnit.key] as String?,
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ManagerCode.key] as String?,
      json[ApiJsonKey.ManagerName.key] as String?,
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.ShiftId.key] as num?)?.toInt(),
      json[ApiJsonKey.ShiftCode.key] as String?,
      json[ApiJsonKey.ShiftName.key] as String?,
    );

Map<String, dynamic> _$InspectionWorkHeaderDtoToJson(InspectionWorkHeaderDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance.id);
  writeNotNull(ApiJsonKey.FactoryId.key, instance.factoryId);
  writeNotNull(ApiJsonKey.InspectionWorkNumber.key, instance.inspectionWorkNumber);
  writeNotNull(ApiJsonKey.InspectionDate.key, instance.inspectionDate);
  writeNotNull(ApiJsonKey.SuperCategory.key, _$InspectionSuperCategoryEnumMap[instance.superCategory]);
  writeNotNull(ApiJsonKey.InspectionType.key, _$InspectionTypeEnumMap[instance.inspectionType]);
  writeNotNull(ApiJsonKey.InspectionMethod.key, _$InspectionMethodEnumMap[instance.inspectionMethod]);
  writeNotNull(ApiJsonKey.QuantityType.key, _$InspectionQuantityTypeEnumMap[instance.quantityType]);
  writeNotNull(ApiJsonKey.InspectionLocation.key, _$InspectionLocationEnumMap[instance.inspectionLocation]);
  writeNotNull(ApiJsonKey.StartTime.key, instance.startTime);
  writeNotNull(ApiJsonKey.EndTime.key, instance.endTime);
  writeNotNull(ApiJsonKey.Memo.key, instance.memo);
  writeNotNull(ApiJsonKey.IsPassed.key, instance.isPassed);
  writeNotNull(ApiJsonKey.ResultCount.key, instance.resultCount);
  writeNotNull(ApiJsonKey.PassCount.key, instance.passCount);
  writeNotNull(ApiJsonKey.FailCount.key, instance.failCount);
  writeNotNull(ApiJsonKey.NextInspectionNumber.key, instance.nextInspectionNumber);
  writeNotNull(ApiJsonKey.ItemId.key, instance.itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance.itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance.itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance.itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance.itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance.itemUnit);
  writeNotNull(ApiJsonKey.ManagerId.key, instance.managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance.managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance.managerName);
  writeNotNull(ApiJsonKey.MachineId.key, instance.machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance.machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance.machineName);
  writeNotNull(ApiJsonKey.ShiftId.key, instance.shiftId);
  writeNotNull(ApiJsonKey.ShiftCode.key, instance.shiftCode);
  writeNotNull(ApiJsonKey.ShiftName.key, instance.shiftName);
  return val;
}

const _$InspectionSuperCategoryEnumMap = {
  InspectionSuperCategory.Incoming: 'Incoming',
  InspectionSuperCategory.Process: 'Process',
  InspectionSuperCategory.Outgoing: 'Outgoing',
  InspectionSuperCategory.Total: 'Total.key',
};

const _$InspectionTypeEnumMap = {
  InspectionType.Trip: 'Trip',
  InspectionType.Incoming: 'Incoming',
  InspectionType.FirstMiddleLast: 'FirstMiddleLast',
  InspectionType.ProcessTour: 'ProcessTour',
  InspectionType.ProcessTotalMeasure: 'ProcessTotalMeasure',
  InspectionType.ProcessTotalSelect: 'ProcessTotalSelect',
  InspectionType.OutgoingSample: 'OutgoingSample',
  InspectionType.OutgoingTotalMeasure: 'OutgoingTotalMeasure',
  InspectionType.OutgoingTotalSelect: 'OutgoingTotalSelect',
  InspectionType.ReturnSelect: 'ReturnSelect',
};

const _$InspectionMethodEnumMap = {
  InspectionMethod.Measurement: 'Measurement',
  InspectionMethod.Selection: 'Selection',
};

const _$InspectionQuantityTypeEnumMap = {
  InspectionQuantityType.Total: 'Total',
  InspectionQuantityType.Sample: 'Sample',
};

const _$InspectionLocationEnumMap = {
  InspectionLocation.Inside: 'Inside',
  InspectionLocation.Outside: 'Outside',
};
