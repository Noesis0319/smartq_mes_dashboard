
part of '../Dto/ProductionOrderLabel.dart';

ProductionOrderLabelDto _$OrderLabelFromJson(Map<String, dynamic> json) => ProductionOrderLabelDto(
      (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.LabelNumber.key] as String?,
      json[ApiJsonKey.InitialQty.key],
      json[ApiJsonKey.InventoryQty.key],
    );

Map<String, dynamic> _$OrderLabelToJson(ProductionOrderLabelDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.LabelNumber.key, instance._labelNumber);
  writeNotNull(ApiJsonKey.InitialQty.key, instance._initialQty);
  writeNotNull(ApiJsonKey.InventoryQty.key, instance._inventoryQty);
  return val;
}
