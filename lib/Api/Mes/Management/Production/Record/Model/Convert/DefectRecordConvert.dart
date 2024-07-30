
part of '../Dto/DefectRecord.dart';

DefectRecordDto _$DefectRecordDtoFromJson(Map<String, dynamic> json) =>
    DefectRecordDto(
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      (json[ApiJsonKey.RecordId.key] as num?)?.toInt(),
      json[ApiJsonKey.DefectQuantity.key],
      json[ApiJsonKey.Occurred.key] as String?,
      $enumDecodeNullable(_$DiscoveryPointEnumMap, json[ApiJsonKey.DiscoveryPoint.key]),
      json[ApiJsonKey.Memo.key] as String?,
      json[ApiJsonKey.IsDiscarded.key] as bool?,
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.LineCode.key] as String?,
      json[ApiJsonKey.LineName.key] as String?,
      $enumDecodeNullable(_$ProcessTypeEnumMap, json[ApiJsonKey.ProcessType.key]),
      (json[ApiJsonKey.OrderLineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
      json[ApiJsonKey.LotNumber.key] as String?,
      (json[ApiJsonKey.LabelId.key] as num?)?.toInt(),
      json[ApiJsonKey.LabelNumber.key] as String?,
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemUnit.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      (json[ApiJsonKey.ReasonId.key] as num?)?.toInt(),
      json[ApiJsonKey.ReasonCode.key] as String?,
      json[ApiJsonKey.ReasonName.key] as String?,
      json[ApiJsonKey.DefectType.key] as String?,
      $enumDecodeNullable(_$DefectLevelEnumMap, json[ApiJsonKey.DefectLevel.key]),
    );

Map<String, dynamic> _$DefectRecordDtoToJson(DefectRecordDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('FactoryId', instance._factoryId);
  writeNotNull('FactoryCode', instance._factoryCode);
  writeNotNull('FactoryName', instance._factoryName);
  writeNotNull('RecordId', instance._recordId);
  writeNotNull('DefectQuantity', instance._defectQuantity);
  writeNotNull('Occurred', instance._occurred);
  writeNotNull('DiscoveryPoint', instance._discoveryPoint);
  writeNotNull('Memo', instance._memo);
  writeNotNull('IsDiscarded', instance._isDiscarded);
  writeNotNull('OrderId', instance._orderId);
  writeNotNull('MachineId', instance._machineId);
  writeNotNull('MachineCode', instance._machineCode);
  writeNotNull('MachineName', instance._machineName);
  writeNotNull('LineId', instance._lineId);
  writeNotNull('LineCode', instance._lineCode);
  writeNotNull('LineName', instance._lineName);
  writeNotNull('ProcessType', instance._processType);
  writeNotNull('OrderLineId', instance._orderLineId);
  writeNotNull('LotId', instance._lotId);
  writeNotNull('LotNumber', instance._lotNumber);
  writeNotNull('LabelId', instance._labelId);
  writeNotNull('LabelNumber', instance._labelNumber);
  writeNotNull('ItemId', instance._itemId);
  writeNotNull('ItemCode', instance._itemCode);
  writeNotNull('ItemName', instance._itemName);
  writeNotNull('ItemNumber', instance._itemNumber);
  writeNotNull('ItemUnit', instance._itemUnit);
  writeNotNull('ItemSpec', instance._itemSpec);
  writeNotNull('ReasonId', instance._reasonId);
  writeNotNull('ReasonCode', instance._reasonCode);
  writeNotNull('ReasonName', instance._reasonName);
  writeNotNull('DefectType', instance._defectType);
  writeNotNull('DefectLevel', instance._defectLevel);
  return val;
}

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

const _$DiscoveryPointEnumMap = {
  DiscoveryPoint.Production: 'Production',
  DiscoveryPoint.Inspection: 'Inspection',
  DiscoveryPoint.Insert: 'Insert',
  DiscoveryPoint.Other: 'Other',
};

const _$DefectLevelEnumMap = {
  DefectLevel.High: 'High',
  DefectLevel.Low: 'Low',
};