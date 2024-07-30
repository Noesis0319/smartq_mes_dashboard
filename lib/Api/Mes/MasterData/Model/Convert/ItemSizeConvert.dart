part of '../Dto/ItemSize.dart';

ItemSizeDto _$ItemSizeDtoFromJson(Map<String, dynamic> json) => ItemSizeDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      $enumDecodeNullable(_$SizeTypeEnumMap, json[ApiJsonKey.SizeType.key]),
      json[ApiJsonKey.Value.key],
    );

Map<String, dynamic> _$ItemSizeDtoToJson(ItemSizeDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.SizeType.key, instance._sizeType);
  writeNotNull(ApiJsonKey.Value.key, instance._value);
  return val;
}

const _$SizeTypeEnumMap = {
  SizeType.ThicknessMillimeter: 'ThicknessMillimeter',
  SizeType.ThicknessCentimeter: 'ThicknessCentimeter',
  SizeType.ThicknessMeter: 'ThicknessMeter',
  SizeType.LengthMillimeter: 'LengthMillimeter',
  SizeType.LengthCentimeter: 'LengthCentimeter',
  SizeType.LengthMeter: 'LengthMeter',
  SizeType.WidthMillimeter: 'WidthMillimeter',
  SizeType.WidthCentimeter: 'WidthCentimeter',
  SizeType.WidthMeter: 'WidthMeter',
};
