
part of '../Dto/PurchaseReceiptSummary.dart';

PurchaseReceiptSummaryDto _$PurchaseReceiptSummaryDtoFromJson(
        Map<String, dynamic> json) =>
    PurchaseReceiptSummaryDto(
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      (json[ApiJsonKey.ReceiptId.key] as num?)?.toInt(),
      json[ApiJsonKey.ReceiptNumber.key] as String?,
      json[ApiJsonKey.InvoiceNumber.key] as String?,
      $enumDecodeNullable(_$PurchaseReceiptTypeEnumMap, json[ApiJsonKey.ReceiptType.key]),
      json[ApiJsonKey.ReceiptTime.key] as String?,
      json[ApiJsonKey.DueMonth.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ManagerCode.key] as String?,
      json[ApiJsonKey.ManagerName.key] as String?,
      (json[ApiJsonKey.SellerId.key] as num?)?.toInt(),
      json[ApiJsonKey.SellerCode.key] as String?,
      json[ApiJsonKey.SellerName.key] as String?,
      $enumDecodeNullable(_$CurrencyEnumMap, json[ApiJsonKey.SellerCurrency.key]),
      (json[ApiJsonKey.SenderId.key] as num?)?.toInt(),
      json[ApiJsonKey.SenderCode.key] as String?,
      json[ApiJsonKey.SenderName.key] as String?,
      (json[ApiJsonKey.ReceiptLineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderLineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
      json[ApiJsonKey.LotNumber.key] as String?,
      json[ApiJsonKey.ManufactureNumber.key] as String?,
      json[ApiJsonKey.ManufactureDate.key] as String?,
      $enumDecodeNullable(_$ConfirmTypeEnumMap, json[ApiJsonKey.ConfirmType.key]),
      $enumDecodeNullable(_$CurrencyEnumMap, json[ApiJsonKey.Currency.key]),
      json[ApiJsonKey.UnitPrice.key],
      json[ApiJsonKey.VatRate.key],
      json[ApiJsonKey.VatIncluded.key] as bool?,
      json[ApiJsonKey.UseClosing.key] as bool?,
      $enumDecodeNullable(_$InventoryManageTypeEnumMap, json[ApiJsonKey.InventoryManageType.key]),
      json[ApiJsonKey.NetAmount.key],
      json[ApiJsonKey.VatAmount.key],
      json[ApiJsonKey.GrossAmount.key],
      json[ApiJsonKey.ReceiptQuantity.key],
      json[ApiJsonKey.EffectiveReceiptQuantity.key],
      json[ApiJsonKey.PutAwayQuantity.key],
      json[ApiJsonKey.NonPutAwayQuantity.key],
      json[ApiJsonKey.PutAwayCompleted.key] as bool?,
      json[ApiJsonKey.ReturnQuantity.key],
      json[ApiJsonKey.NonReturnQuantity.key],
      json[ApiJsonKey.ReturnCompleted.key] as bool?,
      json[ApiJsonKey.ClosingQuantity.key],
      json[ApiJsonKey.NonClosingQuantity.key],
      json[ApiJsonKey.ClosingCompleted.key] as bool?,
      json[ApiJsonKey.ClosingStatus.key] as String?,
      json[ApiJsonKey.ClosingNetAmount.key],
      json[ApiJsonKey.ClosingVatAmount.key],
      json[ApiJsonKey.ClosingGrossAmount.key],
      (json[ApiJsonKey.InspectionCount.key] as num?)?.toInt(),
      json[ApiJsonKey.InspectionConducted.key] as bool?,
      json[ApiJsonKey.InspectionStatus.key] as String?,
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
    );

Map<String, dynamic> _$PurchaseReceiptSummaryDtoToJson(
    PurchaseReceiptSummaryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance._factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance._factoryName);
  writeNotNull(ApiJsonKey.ReceiptId.key, instance._receiptId);
  writeNotNull(ApiJsonKey.ReceiptNumber.key, instance._receiptNumber);
  writeNotNull(ApiJsonKey.InvoiceNumber.key, instance._invoiceNumber);
  writeNotNull(ApiJsonKey.ReceiptType.key, instance._receiptType);
  writeNotNull(ApiJsonKey.ReceiptTime.key, instance._receiptTime);
  writeNotNull(ApiJsonKey.DueMonth.key, instance._dueMonth);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance._managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance._managerName);
  writeNotNull(ApiJsonKey.SellerId.key, instance._sellerId);
  writeNotNull(ApiJsonKey.SellerCode.key, instance._sellerCode);
  writeNotNull(ApiJsonKey.SellerName.key, instance._sellerName);
  writeNotNull(ApiJsonKey.SellerCurrency.key, instance._sellerCurrency);
  writeNotNull(ApiJsonKey.SenderId.key, instance._senderId);
  writeNotNull(ApiJsonKey.SenderCode.key, instance._senderCode);
  writeNotNull(ApiJsonKey.SenderName.key, instance._senderName);
  writeNotNull(ApiJsonKey.ReceiptLineId.key, instance._receiptLineId);
  writeNotNull(ApiJsonKey.OrderLineId.key, instance._orderLineId);
  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
  writeNotNull(ApiJsonKey.LotNumber.key, instance._lotNumber);
  writeNotNull(ApiJsonKey.ManufactureNumber.key, instance._manufactureNumber);
  writeNotNull(ApiJsonKey.ManufactureDate.key, instance._manufactureDate);
  writeNotNull(ApiJsonKey.ConfirmType.key, instance._confirmType);
  writeNotNull(ApiJsonKey.Currency.key, instance._currency);
  writeNotNull(ApiJsonKey.UnitPrice.key, instance._unitPrice);
  writeNotNull(ApiJsonKey.VatRate.key, instance._vatRate);
  writeNotNull(ApiJsonKey.VatIncluded.key, instance._vatIncluded);
  writeNotNull(ApiJsonKey.UseClosing.key, instance._useClosing);
  writeNotNull(ApiJsonKey.InventoryManageType.key, instance._inventoryManageType);
  writeNotNull(ApiJsonKey.NetAmount.key, instance._netAmount);
  writeNotNull(ApiJsonKey.VatAmount.key, instance._vatAmount);
  writeNotNull(ApiJsonKey.GrossAmount.key, instance._grossAmount);
  writeNotNull(ApiJsonKey.ReceiptQuantity.key, instance._receiptQuantity);
  writeNotNull(ApiJsonKey.EffectiveReceiptQuantity.key, instance._effectiveReceiptQuantity);
  writeNotNull(ApiJsonKey.PutAwayQuantity.key, instance._putAwayQuantity);
  writeNotNull(ApiJsonKey.NonPutAwayQuantity.key, instance._nonPutAwayQuantity);
  writeNotNull(ApiJsonKey.PutAwayCompleted.key, instance._putAwayCompleted);
  writeNotNull(ApiJsonKey.ReturnQuantity.key, instance._returnQuantity);
  writeNotNull(ApiJsonKey.NonReturnQuantity.key, instance._nonReturnQuantity);
  writeNotNull(ApiJsonKey.ReturnCompleted.key, instance._returnCompleted);
  writeNotNull(ApiJsonKey.ClosingQuantity.key, instance._closingQuantity);
  writeNotNull(ApiJsonKey.NonClosingQuantity.key, instance._nonClosingQuantity);
  writeNotNull(ApiJsonKey.ClosingCompleted.key, instance._closingCompleted);
  writeNotNull(ApiJsonKey.ClosingStatus.key, instance._closingStatus);
  writeNotNull(ApiJsonKey.ClosingNetAmount.key, instance._closingNetAmount);
  writeNotNull(ApiJsonKey.ClosingVatAmount.key, instance._closingVatAmount);
  writeNotNull(ApiJsonKey.ClosingGrossAmount.key, instance._closingGrossAmount);
  writeNotNull(ApiJsonKey.InspectionCount.key, instance._inspectionCount);
  writeNotNull(ApiJsonKey.InspectionConducted.key, instance._inspectionConducted);
  writeNotNull(ApiJsonKey.InspectionStatus.key, instance._inspectionStatus);
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
  return val;
}

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

const _$ConfirmTypeEnumMap = {
  ConfirmType.Confirmed: 'Confirmed',
  ConfirmType.Temporary: 'Temporary',
  ConfirmType.Unknown: 'Unknown',
};
const _$InventoryManageTypeEnumMap = {
  InventoryManageType.LabelOriented: 'LabelOriented',
  InventoryManageType.Automatic: 'Automatic',
};

const _$PurchaseReceiptTypeEnumMap = {
  PurchaseReceiptType.Standard: 'Standard',
  PurchaseReceiptType.Subcontract: 'Subcontract',
};


