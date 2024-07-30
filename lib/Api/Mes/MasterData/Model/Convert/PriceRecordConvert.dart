part of '../Dto/PriceRecord.dart';

PriceRecordDto _$PriceRecordDtoFromJson(Map<String, dynamic> json) => PriceRecordDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      json[ApiJsonKey.ItemUnit.key] as String?,
  $enumDecodeNullable(_$InventoryManageTypeEnumMap, json[ApiJsonKey.InventoryManageType.key]),
      json[ApiJsonKey.UseClosing.key] as bool?,
      (json[ApiJsonKey.ItemCategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCategoryCode.key] as String?,
      json[ApiJsonKey.ItemCategoryName.key] as String?,
      json[ApiJsonKey.ItemGroupCode.key] as String?,
      json[ApiJsonKey.ItemGroupName.key] as String?,
      json[ApiJsonKey.ItemMajorGroupCode.key] as String?,
      json[ApiJsonKey.ItemMajorGroupName.key] as String?,
      json[ApiJsonKey.ItemModelCode.key] as String?,
      json[ApiJsonKey.ItemModelName.key] as String?,
      json[ApiJsonKey.ItemColorCode.key] as String?,
      json[ApiJsonKey.ItemColorName.key] as String?,
      (json[ApiJsonKey.ItemColorRgb.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemManufacturerCode.key] as String?,
      json[ApiJsonKey.ItemManufacturerName.key] as String?,
      (json[ApiJsonKey.CompanyId.key] as num?)?.toInt(),
      json[ApiJsonKey.CompanyName.key] as String?,
      json[ApiJsonKey.CompanyCode.key] as String?,
      json[ApiJsonKey.CompanyType.key] as String?,
      (json[ApiJsonKey.DeliveryTypeId.key] as num?)?.toInt(),
      json[ApiJsonKey.DeliveryTypeCode.key] as String?,
      json[ApiJsonKey.DeliveryTypeName.key] as String?,
  $enumDecodeNullable(_$DirectionTypeEnumMap, json[ApiJsonKey.DirectionType.key]),
  $enumDecodeNullable(_$ConfirmTypeEnumMap, json[ApiJsonKey.ConfirmType.key]),
  $enumDecodeNullable(_$CurrencyEnumMap, json[ApiJsonKey.Currency.key]),

      json[ApiJsonKey.UnitPrice.key],
      json[ApiJsonKey.VatRate.key],
      json[ApiJsonKey.VatIncluded.key] as bool?,
      json[ApiJsonKey.EffectiveDate.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
    );

Map<String, dynamic> _$PriceRecordDtoToJson(PriceRecordDto instance) {
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
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.InventoryManageType.key, instance._inventoryManageType);
  writeNotNull(ApiJsonKey.UseClosing.key, instance._useClosing);
  writeNotNull(ApiJsonKey.ItemCategoryId.key, instance._itemCategoryId);
  writeNotNull(ApiJsonKey.ItemCategoryCode.key, instance._itemCategoryCode);
  writeNotNull(ApiJsonKey.ItemCategoryName.key, instance._itemCategoryName);
  writeNotNull(ApiJsonKey.ItemGroupCode.key, instance._itemGroupCode);
  writeNotNull(ApiJsonKey.ItemGroupName.key, instance._itemGroupName);
  writeNotNull(ApiJsonKey.ItemMajorGroupCode.key, instance._itemMajorGroupCode);
  writeNotNull(ApiJsonKey.ItemMajorGroupName.key, instance._itemMajorGroupName);
  writeNotNull(ApiJsonKey.ItemModelCode.key, instance._itemModelCode);
  writeNotNull(ApiJsonKey.ItemModelName.key, instance._itemModelName);
  writeNotNull(ApiJsonKey.ItemColorCode.key, instance._itemColorCode);
  writeNotNull(ApiJsonKey.ItemColorName.key, instance._itemColorName);
  writeNotNull(ApiJsonKey.ItemColorRgb.key, instance._itemColorRgb);
  writeNotNull(ApiJsonKey.ItemManufacturerCode.key, instance._itemManufacturerCode);
  writeNotNull(ApiJsonKey.ItemManufacturerName.key, instance._itemManufacturerName);
  writeNotNull(ApiJsonKey.CompanyId.key, instance._companyId);
  writeNotNull(ApiJsonKey.CompanyName.key, instance._companyName);
  writeNotNull(ApiJsonKey.CompanyCode.key, instance._companyCode);
  writeNotNull(ApiJsonKey.CompanyType.key, instance._companyType);
  writeNotNull(ApiJsonKey.DeliveryTypeId.key, instance._deliveryTypeId);
  writeNotNull(ApiJsonKey.DeliveryTypeCode.key, instance._deliveryTypeCode);
  writeNotNull(ApiJsonKey.DeliveryTypeName.key, instance._deliveryTypeName);
  writeNotNull(ApiJsonKey.DirectionType.key, instance._directionType);
  writeNotNull(ApiJsonKey.ConfirmType.key, instance._confirmType);
  writeNotNull(ApiJsonKey.Currency.key, instance._currency);
  writeNotNull(ApiJsonKey.UnitPrice.key, instance._unitPrice);
  writeNotNull(ApiJsonKey.VatRate.key, instance._vatRate);
  writeNotNull(ApiJsonKey.VatIncluded.key, instance._vatIncluded);
  writeNotNull(ApiJsonKey.EffectiveDate.key, instance._effectiveDate);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  return val;
}
const _$InventoryManageTypeEnumMap = {
  InventoryManageType.LabelOriented: 'LabelOriented',
  InventoryManageType.Automatic: 'Automatic',
};

const _$ConfirmTypeEnumMap = {
  ConfirmType.Confirmed: 'Confirmed',
  ConfirmType.Temporary: 'Temporary',
  ConfirmType.Unknown: 'Unknown',
};
const _$CurrencyEnumMap = {
  Currency.None: 'None',
  Currency.Won: 'Won',
  Currency.Dollar: 'Dollar',
  Currency.ChineseYuan: 'ChineseYuan',
  Currency.JapaneseYen: 'JapaneseYen',
  Currency.Euro: 'Euro',
  Currency.BritishPound: 'BritishPound',
  Currency.IndonesianRupiah: 'IndonesianRupiah',
};
const _$DirectionTypeEnumMap = {
  DirectionType.Purchase: 'Purchase',
  DirectionType.Sales: 'Sales',
  DirectionType.Production: 'Production',
  DirectionType.Subcontract: 'Subcontract',
};