
part of '../Dto/PurchaseOrderSummary.dart';

PurchaseOrderSummaryDto _$PurchaseOrderSummaryDtoFromJson(
        Map<String, dynamic> json) =>
    PurchaseOrderSummaryDto(
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      json[ApiJsonKey.OrderNumber.key] as String?,
      json[ApiJsonKey.OrderDate.key] as String?,
      json[ApiJsonKey.DeliveryDate.key] as String?,
      (json[ApiJsonKey.SellerId.key] as num?)?.toInt(),
      json[ApiJsonKey.SellerCode.key] as String?,
      json[ApiJsonKey.SellerName.key] as String?,
      (json[ApiJsonKey.SenderId.key] as num?)?.toInt(),
      json[ApiJsonKey.SenderCode.key] as String?,
      json[ApiJsonKey.SenderName.key] as String?,
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ManagerCode.key] as String?,
      json[ApiJsonKey.ManagerName.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      (json[ApiJsonKey.DueMonth.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderLineId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$PurchaseOrderTypeEnumMap, json[ApiJsonKey.OrderType.key]),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      json[ApiJsonKey.ItemUnit.key] as String?,
      (json[ApiJsonKey.ItemCategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCategoryCode.key] as String?,
      json[ApiJsonKey.ItemCategoryName.key] as String?,
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
      $enumDecodeNullable(_$ConfirmTypeEnumMap, json[ApiJsonKey.ConfirmType.key]),
      json[ApiJsonKey.UnitPrice.key],
      $enumDecodeNullable(_$CurrencyEnumMap, json[ApiJsonKey.Currency.key]),
      json[ApiJsonKey.NetAmount.key],
      json[ApiJsonKey.VatRate.key],
      json[ApiJsonKey.VatAmount.key],
      json[ApiJsonKey.GrossAmount.key],
      json[ApiJsonKey.ReceiptDueDate.key] as String?,
      json[ApiJsonKey.OrderQuantity.key],
      json[ApiJsonKey.ReceiptQuantity.key],
      json[ApiJsonKey.NonReceiptQuantity.key],
      json[ApiJsonKey.VatIncluded.key] as bool?,
      (json[ApiJsonKey.RequisitionLineId.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$PurchaseOrderSummaryDtoToJson(
    PurchaseOrderSummaryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.OrderNumber.key, instance._orderNumber);
  writeNotNull(ApiJsonKey.OrderDate.key, instance._orderDate);
  writeNotNull(ApiJsonKey.DeliveryDate.key, instance._deliveryDate);
  writeNotNull(ApiJsonKey.SellerId.key, instance._sellerId);
  writeNotNull(ApiJsonKey.SellerCode.key, instance._sellerCode);
  writeNotNull(ApiJsonKey.SellerName.key, instance._sellerName);
  writeNotNull(ApiJsonKey.SenderId.key, instance._senderId);
  writeNotNull(ApiJsonKey.SenderCode.key, instance._senderCode);
  writeNotNull(ApiJsonKey.SenderName.key, instance._senderName);
  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance._factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance._factoryName);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance._managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance._managerName);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.DueMonth.key, instance._dueMonth);
  writeNotNull(ApiJsonKey.OrderLineId.key, instance._orderLineId);
  writeNotNull(ApiJsonKey.OrderType.key, instance._orderType);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.ItemCategoryId.key, instance._itemCategoryId);
  writeNotNull(ApiJsonKey.ItemCategoryCode.key, instance._itemCategoryCode);
  writeNotNull(ApiJsonKey.ItemCategoryName.key, instance._itemCategoryName);
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
  writeNotNull(ApiJsonKey.ConfirmType.key, instance._confirmType);
  writeNotNull(ApiJsonKey.UnitPrice.key, instance._unitPrice);
  writeNotNull(ApiJsonKey.Currency.key, instance._currency);
  writeNotNull(ApiJsonKey.NetAmount.key, instance._netAmount);
  writeNotNull(ApiJsonKey.VatRate.key, instance._vatRate);
  writeNotNull(ApiJsonKey.VatAmount.key, instance._vatAmount);
  writeNotNull(ApiJsonKey.GrossAmount.key, instance._grossAmount);
  writeNotNull(ApiJsonKey.ReceiptDueDate.key, instance._receiptDueDate);
  writeNotNull(ApiJsonKey.OrderQuantity.key, instance._orderQuantity);
  writeNotNull(ApiJsonKey.ReceiptQuantity.key, instance._receiptQuantity);
  writeNotNull(ApiJsonKey.NonReceiptQuantity.key, instance._nonReceiptQuantity);
  writeNotNull(ApiJsonKey.VatIncluded.key, instance._vatIncluded);
  writeNotNull(ApiJsonKey.RequisitionLineId.key, instance._requisitionLineId);
  return val;
}


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




const _$PurchaseOrderTypeEnumMap = {
  PurchaseOrderType.Standard: 'Standard',
  PurchaseOrderType.Subcontract: 'Subcontract',
};