part of '../Dto/LatestPriceRecord.dart';

LatestPriceRecordDto _$LatestPriceRecordDtoFromJson(Map<String, dynamic> json) => LatestPriceRecordDto(
      (json[ApiJsonKey.PriceRecordId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
  $enumDecodeNullable(_$DirectionTypeEnumMap, json[ApiJsonKey.DirectionType.key]),
  $enumDecodeNullable(_$ConfirmTypeEnumMap, json[ApiJsonKey.ConfirmType.key]),
  $enumDecodeNullable(_$CurrencyEnumMap, json[ApiJsonKey.Currency.key]),
      json[ApiJsonKey.UnitPrice.key],
      json[ApiJsonKey.VatRate.key],
      json[ApiJsonKey.VatIncluded.key] as bool?,
      (json[ApiJsonKey.VatIncludedValue.key] as num?)?.toInt(),
      json[ApiJsonKey.EffectiveDate.key] as String?,
    );

Map<String, dynamic> _$LatestPriceRecordDtoToJson(LatestPriceRecordDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.PriceRecordId.key, instance._priceRecordId);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.DirectionType.key, instance._directionType);
  writeNotNull(ApiJsonKey.ConfirmType.key, instance._confirmType);
  writeNotNull(ApiJsonKey.Currency.key, instance._currency);
  writeNotNull(ApiJsonKey.UnitPrice.key, instance._unitPrice);
  writeNotNull(ApiJsonKey.VatRate.key, instance._vatRate);
  writeNotNull(ApiJsonKey.VatIncluded.key, instance._vatIncluded);
  writeNotNull(ApiJsonKey.VatIncludedValue.key, instance._vatIncludedValue);
  writeNotNull(ApiJsonKey.EffectiveDate.key, instance._effectiveDate);
  return val;
}
const _$DirectionTypeEnumMap = {
  DirectionType.Purchase: 'Purchase',
  DirectionType.Sales: 'Sales',
  DirectionType.Production: 'Production',
  DirectionType.Subcontract: 'Subcontract',
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
