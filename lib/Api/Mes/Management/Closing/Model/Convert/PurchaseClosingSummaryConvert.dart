
part of '../Dto/PurchaseClosingSummary.dart';

PurchaseClosingSummaryDto _$PurchaseClosingSummaryDtoFromJson(
        Map<String, dynamic> json) =>
    PurchaseClosingSummaryDto(
      (json[ApiJsonKey.ClosingId.key] as num?)?.toInt(),
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      json[ApiJsonKey.ClosingTime.key] as String?,
      json[ApiJsonKey.Reason.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ManagerCode.key] as String?,
      json[ApiJsonKey.ManagerName.key] as String?,
      (json[ApiJsonKey.SellerId.key] as num?)?.toInt(),
      json[ApiJsonKey.SellerCode.key] as String?,
      json[ApiJsonKey.SellerName.key] as String?,
      json[ApiJsonKey.ClosingNumber.key] as String?,
      $enumDecodeNullable(_$ClosingTypeEnumMap, json[ApiJsonKey.ClosingType.key]),
      $enumDecodeNullable(_$ClosingReferenceTypeEnumMap, json[ApiJsonKey.ReferenceType.key]),
      (json[ApiJsonKey.TotalNetAmount.key] as num?)?.toDouble(),
      (json[ApiJsonKey.TotalVatAmount.key] as num?)?.toDouble(),
      (json[ApiJsonKey.TotalGrossAmount.key] as num?)?.toDouble(),
      (json[ApiJsonKey.ClosingLineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ReceiptLineId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$PurchaseReceiptTypeEnumMap, json[ApiJsonKey.ReceiptType.key]),
      json[ApiJsonKey.ReceiptNumber.key] as String?,
      (json[ApiJsonKey.ReceiptQuantity.key] as num?)?.toDouble(),
      (json[ApiJsonKey.EffectiveReceiptQuantity.key] as num?)?.toDouble(),
      (json[ApiJsonKey.ReturnQuantity.key] as num?)?.toDouble(),
      (json[ApiJsonKey.NonReturnQuantity.key] as num?)?.toDouble(),
      json[ApiJsonKey.ClosingCompleted.key] as bool?,
      (json[ApiJsonKey.ItemCategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCategoryCode.key] as String?,
      json[ApiJsonKey.ItemCategoryName.key] as String?,
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      json[ApiJsonKey.ItemUnit.key] as String?,
      (json[ApiJsonKey.ItemModelId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemModelCode.key] as String?,
      json[ApiJsonKey.ItemModelName.key] as String?,
      (json[ApiJsonKey.ItemColorId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemColorCode.key] as String?,
      json[ApiJsonKey.ItemColorName.key] as String?,
      (json[ApiJsonKey.ItemColorRgb.key] as num?)?.toInt(),
      (json[ApiJsonKey.ItemManufacturerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemManufacturerCode.key] as String?,
      json[ApiJsonKey.ItemManufacturerName.key] as String?,
      (json[ApiJsonKey.ItemGroupId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemGroupCode.key] as String?,
      json[ApiJsonKey.ItemGroupName.key] as String?,
      (json[ApiJsonKey.ItemMajorGroupId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemMajorGroupCode.key] as String?,
      json[ApiJsonKey.ItemMajorGroupName.key] as String?,
      (json[ApiJsonKey.ItemTextureId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemTextureCode.key] as String?,
      json[ApiJsonKey.ItemTextureName.key] as String?,
      (json[ApiJsonKey.DeliveryTypeId.key] as num?)?.toInt(),
      json[ApiJsonKey.DeliveryTypeCode.key] as String?,
      json[ApiJsonKey.DeliveryTypeName.key] as String?,
      (json[ApiJsonKey.ClosingQuantity.key] as num?)?.toDouble(),
      (json[ApiJsonKey.NonClosingQuantity.key] as num?)?.toDouble(),
      $enumDecodeNullable(_$ConfirmTypeEnumMap, json[ApiJsonKey.ConfirmType.key]),
      $enumDecodeNullable(_$CurrencyEnumMap, json[ApiJsonKey.Currency.key]),
      (json[ApiJsonKey.UnitPrice.key] as num?)?.toDouble(),
      (json[ApiJsonKey.VatRate.key] as num?)?.toDouble(),
      json[ApiJsonKey.VatIncluded.key] as bool?,
      (json[ApiJsonKey.NetAmount.key] as num?)?.toDouble(),
      (json[ApiJsonKey.VatAmount.key] as num?)?.toDouble(),
      (json[ApiJsonKey.GrossAmount.key] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PurchaseClosingSummaryDtoToJson(
    PurchaseClosingSummaryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.ClosingId.key, instance._closingId);
  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance.factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance.factoryName);
  writeNotNull(ApiJsonKey.ClosingTime.key, instance.closingTime);
  writeNotNull(ApiJsonKey.Reason.key, instance.reason);
  writeNotNull(ApiJsonKey.Memo.key, instance.memo);
  writeNotNull(ApiJsonKey.ManagerId.key, instance.managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance.managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance.managerName);
  writeNotNull(ApiJsonKey.SellerId.key, instance.sellerId);
  writeNotNull(ApiJsonKey.SellerCode.key, instance.sellerCode);
  writeNotNull(ApiJsonKey.SellerName.key, instance.sellerName);
  writeNotNull(ApiJsonKey.ClosingNumber.key, instance.closingNumber);
  writeNotNull(ApiJsonKey.ClosingType.key, instance.closingType);
  writeNotNull(ApiJsonKey.ReferenceType.key, instance.referenceType);
  writeNotNull(ApiJsonKey.TotalNetAmount.key, instance.totalNetAmount);
  writeNotNull(ApiJsonKey.TotalVatAmount.key, instance.totalVatAmount);
  writeNotNull(ApiJsonKey.TotalGrossAmount.key, instance.totalGrossAmount);
  writeNotNull(ApiJsonKey.ClosingLineId.key, instance.closingLineId);
  writeNotNull(ApiJsonKey.ReceiptLineId.key, instance.receiptLineId);
  writeNotNull(ApiJsonKey.ReceiptType.key, instance.receiptType);
  writeNotNull(ApiJsonKey.ReceiptNumber.key, instance.receiptNumber);
  writeNotNull(ApiJsonKey.ReceiptQuantity.key, instance.receiptQuantity);
  writeNotNull(ApiJsonKey.EffectiveReceiptQuantity.key, instance.effectiveReceiptQuantity);
  writeNotNull(ApiJsonKey.ReturnQuantity.key, instance.returnQuantity);
  writeNotNull(ApiJsonKey.NonReturnQuantity.key, instance.nonReturnQuantity);
  writeNotNull(ApiJsonKey.ClosingCompleted.key, instance.closingCompleted);
  writeNotNull(ApiJsonKey.ItemCategoryId.key, instance.itemCategoryId);
  writeNotNull(ApiJsonKey.ItemCategoryCode.key, instance.itemCategoryCode);
  writeNotNull(ApiJsonKey.ItemCategoryName.key, instance.itemCategoryName);
  writeNotNull(ApiJsonKey.ItemId.key, instance.itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance.itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance.itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance.itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance.itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance.itemUnit);
  writeNotNull(ApiJsonKey.ItemModelId.key, instance.itemModelId);
  writeNotNull(ApiJsonKey.ItemModelCode.key, instance.itemModelCode);
  writeNotNull(ApiJsonKey.ItemModelName.key, instance.itemModelName);
  writeNotNull(ApiJsonKey.ItemColorId.key, instance.itemColorId);
  writeNotNull(ApiJsonKey.ItemColorCode.key, instance.itemColorCode);
  writeNotNull(ApiJsonKey.ItemColorName.key, instance.itemColorName);
  writeNotNull(ApiJsonKey.ItemColorRgb.key, instance.itemColorRgb);
  writeNotNull(ApiJsonKey.ItemManufacturerId.key, instance.itemManufacturerId);
  writeNotNull(ApiJsonKey.ItemManufacturerCode.key, instance._itemManufacturerCode);
  writeNotNull(ApiJsonKey.ItemManufacturerName.key, instance.itemManufacturerName);
  writeNotNull(ApiJsonKey.ItemGroupId.key, instance.itemGroupId);
  writeNotNull(ApiJsonKey.ItemGroupCode.key, instance.itemGroupCode);
  writeNotNull(ApiJsonKey.ItemGroupName.key, instance.itemGroupName);
  writeNotNull(ApiJsonKey.ItemMajorGroupId.key, instance.itemMajorGroupId);
  writeNotNull(ApiJsonKey.ItemMajorGroupCode.key, instance.itemMajorGroupCode);
  writeNotNull(ApiJsonKey.ItemMajorGroupName.key, instance.itemMajorGroupName);
  writeNotNull(ApiJsonKey.ItemTextureId.key, instance.itemTextureId);
  writeNotNull(ApiJsonKey.ItemTextureCode.key, instance.itemTextureCode);
  writeNotNull(ApiJsonKey.ItemTextureName.key, instance.itemTextureName);
  writeNotNull(ApiJsonKey.DeliveryTypeId.key, instance.deliveryTypeId);
  writeNotNull(ApiJsonKey.DeliveryTypeCode.key, instance.deliveryTypeCode);
  writeNotNull(ApiJsonKey.DeliveryTypeName.key, instance.deliveryTypeName);
  writeNotNull(ApiJsonKey.ClosingQuantity.key, instance.closingQuantity);
  writeNotNull(ApiJsonKey.NonClosingQuantity.key, instance.nonClosingQuantity);
  writeNotNull(ApiJsonKey.ConfirmType.key, instance.confirmType);
  writeNotNull(ApiJsonKey.Currency.key, instance.currency);
  writeNotNull(ApiJsonKey.UnitPrice.key, instance.unitPrice);
  writeNotNull(ApiJsonKey.VatRate.key, instance.vatRate);
  writeNotNull(ApiJsonKey.VatIncluded.key, instance.vatIncluded);
  writeNotNull(ApiJsonKey.NetAmount.key, instance.netAmount);
  writeNotNull(ApiJsonKey.VatAmount.key, instance.vatAmount);
  writeNotNull(ApiJsonKey.GrossAmount.key, instance.grossAmount);
  return val;
}

const _$ClosingTypeEnumMap = {
  PurchaseClosingType.Standard: 'Standard',
  PurchaseClosingType.Subcontract: 'Subcontract',
};

const _$ClosingReferenceTypeEnumMap = {
  ClosingReferenceType.ReferenceReceipt : 'ReferenceReceipt',
  ClosingReferenceType.ReferenceIssue : 'ReferenceIssue',
  ClosingReferenceType.ReferenceNothing : 'ReferenceNothing',
};

const _$PurchaseReceiptTypeEnumMap = {
  PurchaseReceiptType.Standard: 'Standard',
  PurchaseReceiptType.Subcontract: 'Subcontract',
};

const _$ConfirmTypeEnumMap = {
  ConfirmType.Confirmed: 'Confirmed',
  ConfirmType.Temporary: 'Temporary',
  ConfirmType.Unknown: 'Unknown',
};
const _$CurrencyEnumMap = {
  Currency.None:'None',
  Currency.Won:'Won',
  Currency.Dollar:'Dollar',
  Currency.ChineseYuan:'ChineseYuan',
  Currency.JapaneseYen:'JapaneseYen',
  Currency.Euro:'Euro',
  Currency.BritishPound:'BritishPound',
  Currency.IndonesianRupiah:'IndonesianRupiah',
};

