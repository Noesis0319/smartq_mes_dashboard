
part of '../Dto/SalesClosingSummary.dart';

SalesClosingSummaryDto _$SalesClosingSummaryDtoFromJson(
        Map<String, dynamic> json) =>
    SalesClosingSummaryDto(
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
      (json[ApiJsonKey.BuyerId.key] as num?)?.toInt(),
      json[ApiJsonKey.BuyerCode.key] as String?,
      json[ApiJsonKey.BuyerName.key] as String?,
      json[ApiJsonKey.ClosingNumber.key] as String?,
      $enumDecodeNullable(_$SalesClosingTypeEnumMap, json[ApiJsonKey.ClosingType.key]),
      $enumDecodeNullable(_$ClosingReferenceTypeEnumMap, json[ApiJsonKey.ReferenceType.key]),
      (json[ApiJsonKey.TotalNetAmount.key] as num?)?.toDouble(),
      (json[ApiJsonKey.TotalVatAmount.key] as num?)?.toDouble(),
      (json[ApiJsonKey.TotalGrossAmount.key] as num?)?.toDouble(),
      (json[ApiJsonKey.ClosingLineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.IssueLineId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$GoodsIssueTypeEnumMap, json[ApiJsonKey.IssueType.key]),
      json[ApiJsonKey.IssueNumber.key] as String?,
      (json[ApiJsonKey.IssueQuantity.key] as num?)?.toDouble(),
      (json[ApiJsonKey.ReturnQuantity.key] as num?)?.toDouble(),
      (json[ApiJsonKey.ReturnQuantityLeft.key] as num?)?.toDouble(),
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

Map<String, dynamic> _$SalesClosingSummaryDtoToJson(
    SalesClosingSummaryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.ClosingId.key, instance._closingId);
  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance._factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance._factoryName);
  writeNotNull(ApiJsonKey.ClosingTime.key, instance._closingTime);
  writeNotNull(ApiJsonKey.Reason.key, instance._reason);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance._managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance._managerName);
  writeNotNull(ApiJsonKey.BuyerId.key, instance._buyerId);
  writeNotNull(ApiJsonKey.BuyerCode.key, instance.buyerCode);
  writeNotNull(ApiJsonKey.BuyerName.key, instance._buyerName);
  writeNotNull(ApiJsonKey.ClosingNumber.key, instance._closingNumber);
  writeNotNull(ApiJsonKey.ClosingType.key, instance._closingType);
  writeNotNull(ApiJsonKey.ReferenceType.key, instance._referenceType);
  writeNotNull(ApiJsonKey.TotalNetAmount.key, instance._totalNetAmount);
  writeNotNull(ApiJsonKey.TotalVatAmount.key, instance._totalVatAmount);
  writeNotNull(ApiJsonKey.TotalGrossAmount.key, instance._totalGrossAmount);
  writeNotNull(ApiJsonKey.ClosingLineId.key, instance._closingLineId);
  writeNotNull(ApiJsonKey.IssueLineId.key, instance._issueLineId);
  writeNotNull(ApiJsonKey.IssueType.key, instance._issueType);
  writeNotNull(ApiJsonKey.IssueNumber.key, instance._issueNumber);
  writeNotNull(ApiJsonKey.IssueQuantity.key, instance._issueQuantity);
  writeNotNull(ApiJsonKey.ReturnQuantity.key, instance._returnQuantity);
  writeNotNull(ApiJsonKey.ReturnQuantityLeft.key, instance._returnQuantityLeft);
  writeNotNull(ApiJsonKey.ClosingCompleted.key, instance._closingCompleted);
  writeNotNull(ApiJsonKey.ItemCategoryId.key, instance._itemCategoryId);
  writeNotNull(ApiJsonKey.ItemCategoryCode.key, instance._itemCategoryCode);
  writeNotNull(ApiJsonKey.ItemCategoryName.key, instance._itemCategoryName);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.ItemModelId.key, instance._itemModelId);
  writeNotNull(ApiJsonKey.ItemModelCode.key, instance._itemModelCode);
  writeNotNull(ApiJsonKey.ItemModelName.key, instance._itemModelName);
  writeNotNull(ApiJsonKey.ItemColorId.key, instance._itemColorId);
  writeNotNull(ApiJsonKey.ItemColorCode.key, instance._itemColorCode);
  writeNotNull(ApiJsonKey.ItemColorName.key, instance._itemColorName);
  writeNotNull(ApiJsonKey.ItemColorRgb.key, instance._itemColorRgb);
  writeNotNull(ApiJsonKey.ItemManufacturerId.key, instance._itemManufacturerId);
  writeNotNull(ApiJsonKey.ItemManufacturerCode.key, instance._itemManufacturerCode);
  writeNotNull(ApiJsonKey.ItemManufacturerName.key, instance._itemManufacturerName);
  writeNotNull(ApiJsonKey.ItemGroupId.key, instance._itemGroupId);
  writeNotNull(ApiJsonKey.ItemGroupCode.key, instance._itemGroupCode);
  writeNotNull(ApiJsonKey.ItemGroupName.key, instance._itemGroupName);
  writeNotNull(ApiJsonKey.ItemMajorGroupId.key, instance._itemMajorGroupId);
  writeNotNull(ApiJsonKey.ItemMajorGroupCode.key, instance._itemMajorGroupCode);
  writeNotNull(ApiJsonKey.ItemMajorGroupName.key, instance._itemMajorGroupName);
  writeNotNull(ApiJsonKey.ItemTextureId.key, instance._itemTextureId);
  writeNotNull(ApiJsonKey.ItemTextureCode.key, instance._itemTextureCode);
  writeNotNull(ApiJsonKey.ItemTextureName.key, instance._itemTextureName);
  writeNotNull(ApiJsonKey.DeliveryTypeId.key, instance._deliveryTypeId);
  writeNotNull(ApiJsonKey.DeliveryTypeCode.key, instance._deliveryTypeCode);
  writeNotNull(ApiJsonKey.DeliveryTypeName.key, instance._deliveryTypeName);
  writeNotNull(ApiJsonKey.ClosingQuantity.key, instance._closingQuantity);
  writeNotNull(ApiJsonKey.NonClosingQuantity.key, instance._nonClosingQuantity);
  writeNotNull(ApiJsonKey.ConfirmType.key, instance._confirmType);
  writeNotNull(ApiJsonKey.Currency.key, instance._currency);
  writeNotNull(ApiJsonKey.UnitPrice.key, instance._unitPrice);
  writeNotNull(ApiJsonKey.VatRate.key, instance._vatRate);
  writeNotNull(ApiJsonKey.VatIncluded.key, instance._vatIncluded);
  writeNotNull(ApiJsonKey.NetAmount.key, instance._netAmount);
  writeNotNull(ApiJsonKey.VatAmount.key, instance._vatAmount);
  writeNotNull(ApiJsonKey.GrossAmount.key, instance._grossAmount);
  return val;
}

const _$SalesClosingTypeEnumMap = {
  SalesClosingType.Standard: 'Standard',
  SalesClosingType.Subcontract: 'Subcontract',
};
const _$GoodsIssueTypeEnumMap = {
  GoodsIssueType.Standard: 'Standard',
  GoodsIssueType.Subcontract: 'Subcontract',
};
const _$ClosingReferenceTypeEnumMap = {
  ClosingReferenceType.ReferenceReceipt: 'ReferenceReceipt',
  ClosingReferenceType.ReferenceIssue: 'ReferenceIssue',
  ClosingReferenceType.ReferenceNothing: 'ReferenceNothing',
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
