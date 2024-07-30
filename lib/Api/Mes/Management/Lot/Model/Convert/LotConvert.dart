
part of '../Dto/Lot.dart';

LotDto _$LotDtoFromJson(Map<String, dynamic> json) => LotDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
  $enumDecodeNullable(_$LotTypeEnumMap, json[ApiJsonKey.LotType.key]),

  $enumDecodeNullable(_$ProcessTypeEnumMap, json[ApiJsonKey.ProcessType.key]),
      json[ApiJsonKey.LotNumber.key] as String?,
      json[ApiJsonKey.LotCreationDate.key] as String?,
      json[ApiJsonKey.ManufactureDate.key] as String?,
      json[ApiJsonKey.CustomNumber.key] as String?,
      json[ApiJsonKey.PutAwayQty.key],
      json[ApiJsonKey.PickingQty.key],
      json[ApiJsonKey.AvailablePickingQty.key],
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      json[ApiJsonKey.ItemUnit.key] as String?,
    );

Map<String, dynamic> _$LotDtoToJson(LotDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.LotType.key, instance._lotType);
  writeNotNull(ApiJsonKey.ProcessType.key, instance._processType);
  writeNotNull(ApiJsonKey.LotNumber.key, instance._lotNumber);
  writeNotNull(ApiJsonKey.LotCreationDate.key, instance._lotCreationDate);
  writeNotNull(ApiJsonKey.ManufactureDate.key, instance._manufactureDate);
  writeNotNull(ApiJsonKey.CustomNumber.key, instance._customNumber);
  writeNotNull(ApiJsonKey.PutAwayQty.key, instance._putAwayQty);
  writeNotNull(ApiJsonKey.PickingQty.key, instance._pickingQty);
  writeNotNull(ApiJsonKey.AvailablePickingQty.key, instance._availablePickingQty);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  return val;
}
const _$LotTypeEnumMap = {
  LotType.GoodsReceipt: 'GoodsReceipt',
  LotType.Production: 'Production',
  LotType.SubContract: 'SubContract',
  LotType.Packing: 'Packing',
  LotType.Other: 'Other',
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