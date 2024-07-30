part of '../Dto/InspectionWorkSummary.dart';

InspectionWorkSummaryDto _$InspectionWorkSummaryDtoFromJson(Map<String, dynamic> json) => InspectionWorkSummaryDto(
      (json[ApiJsonKey.InspectionWorkId.key] as num?)?.toInt(),
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
      json[ApiJsonKey.IsWorkPassed.key] as bool?,
      (json[ApiJsonKey.ResultCount.key] as num?)?.toInt(),
      (json[ApiJsonKey.PassCount.key] as num?)?.toInt(),
      (json[ApiJsonKey.FailCount.key] as num?)?.toInt(),
      (json[ApiJsonKey.NextInspectionResultNumber.key] as num?)?.toInt(),
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
      (json[ApiJsonKey.InspectionResultId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ResultNumber.key] as num?)?.toInt(),
      (json[ApiJsonKey.SubCategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.SubCategoryName.key] as String?,
      (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
      json[ApiJsonKey.LotNumber.key] as String?,
      json[ApiJsonKey.InspectionTime.key] as String?,
      (json[ApiJsonKey.SelectionQuantity.key] as num?)?.toInt(),
      json[ApiJsonKey.IsResultPassed.key] as bool?,
      (json[ApiJsonKey.CavityNumber.key] as num?)?.toInt(),
      json[ApiJsonKey.LabelNumber.key] as String?,
      (json[ApiJsonKey.NextMeasurementResultNumber.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$InspectionWorkSummaryDtoToJson(InspectionWorkSummaryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.InspectionWorkId.key, instance._inspectionWorkId);
  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.InspectionWorkNumber.key, instance._inspectionWorkNumber);
  writeNotNull(ApiJsonKey.InspectionDate.key, instance._inspectionDate);
  writeNotNull(ApiJsonKey.SuperCategory.key, _$InspectionSuperCategoryEnumMap[instance._superCategory]);
  writeNotNull(ApiJsonKey.InspectionType.key, _$InspectionTypeEnumMap[instance._inspectionType]);
  writeNotNull(ApiJsonKey.InspectionMethod.key, _$InspectionMethodEnumMap[instance._inspectionMethod]);
  writeNotNull(ApiJsonKey.QuantityType.key, _$InspectionQuantityTypeEnumMap[instance._quantityType]);
  writeNotNull(ApiJsonKey.InspectionLocation.key, _$InspectionLocationEnumMap[instance._inspectionLocation]);
  writeNotNull(ApiJsonKey.StartTime.key, instance._startTime);
  writeNotNull(ApiJsonKey.EndTime.key, instance._endTime);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.IsWorkPassed.key, instance._isWorkPassed);
  writeNotNull(ApiJsonKey.ResultCount.key, instance._resultCount);
  writeNotNull(ApiJsonKey.PassCount.key, instance._passCount);
  writeNotNull(ApiJsonKey.FailCount.key, instance._failCount);
  writeNotNull(ApiJsonKey.NextInspectionResultNumber.key, instance._nextInspectionResultNumber);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance._managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance._managerName);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.ShiftId.key, instance._shiftId);
  writeNotNull(ApiJsonKey.ShiftCode.key, instance._shiftCode);
  writeNotNull(ApiJsonKey.ShiftName.key, instance._shiftName);
  writeNotNull(ApiJsonKey.InspectionResultId.key, instance._inspectionResultId);
  writeNotNull(ApiJsonKey.ResultNumber.key, instance._resultNumber);
  writeNotNull(ApiJsonKey.SubCategoryId.key, instance._subCategoryId);
  writeNotNull(ApiJsonKey.SubCategoryName.key, instance._subCategoryName);
  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
  writeNotNull(ApiJsonKey.LotNumber.key, instance._lotNumber);
  writeNotNull(ApiJsonKey.InspectionTime.key, instance._inspectionTime);
  writeNotNull(ApiJsonKey.SelectionQuantity.key, instance._selectionQuantity);
  writeNotNull(ApiJsonKey.IsResultPassed.key, instance._isResultPassed);
  writeNotNull(ApiJsonKey.CavityNumber.key, instance._cavityNumber);
  writeNotNull(ApiJsonKey.LabelNumber.key, instance._labelNumber);
  writeNotNull(ApiJsonKey.NextMeasurementResultNumber.key, instance._nextMeasurementResultNumber);
  return val;
}

const _$InspectionSuperCategoryEnumMap = {
  InspectionSuperCategory.Incoming: 'Incoming',
  InspectionSuperCategory.Process: 'Process',
  InspectionSuperCategory.Outgoing: 'Outgoing',
  InspectionSuperCategory.Total: 'Total',
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
