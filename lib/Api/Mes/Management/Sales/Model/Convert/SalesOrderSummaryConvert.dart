part of '../Dto/SalesOrderSummary.dart';

SalesOrderSummaryDto _$SalesOrderSummaryDtoFromJson(Map<String, dynamic> json) => SalesOrderSummaryDto(
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      json[ApiJsonKey.OrderNumber.key] as String?,
      json[ApiJsonKey.CustomerOrderNumber.key] as String?,
      json[ApiJsonKey.OrderDate.key] as String?,
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      (json[ApiJsonKey.BuyerId.key] as num?)?.toInt(),
      json[ApiJsonKey.BuyerCode.key] as String?,
      json[ApiJsonKey.BuyerName.key] as String?,
      (json[ApiJsonKey.ReceiverId.key] as num?)?.toInt(),
      json[ApiJsonKey.ReceiverCode.key] as String?,
      json[ApiJsonKey.ReceiverName.key] as String?,
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ManagerCode.key] as String?,
      json[ApiJsonKey.ManagerName.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      (json[ApiJsonKey.OrderLineId.key] as num?)?.toInt(),
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
      json[ApiJsonKey.OrderQuantity.key],
      json[ApiJsonKey.RequisitionQuantity.key],
      json[ApiJsonKey.PickingQuantity.key],
      json[ApiJsonKey.PickingQuantityLeft.key],
      json[ApiJsonKey.RequisitionQuantityLeft.key],
      json[ApiJsonKey.IssueQuantity.key],
      json[ApiJsonKey.IssueQuantityLeft.key],
      json[ApiJsonKey.IssueDueDate.key] as String?,
      (json[ApiJsonKey.DeliveryTypeId.key] as num?)?.toInt(),
      json[ApiJsonKey.DeliveryTypeCode.key] as String?,
      json[ApiJsonKey.DeliveryTypeName.key] as String?,
      json[ApiJsonKey.ConfirmType.key] as String?,
      json[ApiJsonKey.UnitPrice.key],
      json[ApiJsonKey.Currency.key] as String?,
      json[ApiJsonKey.VatRate.key],
      json[ApiJsonKey.VatIncluded.key] as bool?,
      json[ApiJsonKey.NetAmount.key],
      json[ApiJsonKey.VatAmount.key],
      json[ApiJsonKey.GrossAmount.key],
    );

Map<String, dynamic> _$SalesOrderSummaryDtoToJson(SalesOrderSummaryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.OrderNumber.key, instance._orderNumber);
  writeNotNull(ApiJsonKey.CustomerOrderNumber.key, instance._customerOrderNumber);
  writeNotNull(ApiJsonKey.OrderDate.key, instance._orderDate);
  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance._factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance._factoryName);
  writeNotNull(ApiJsonKey.BuyerId.key, instance._buyerId);
  writeNotNull(ApiJsonKey.BuyerCode.key, instance._buyerCode);
  writeNotNull(ApiJsonKey.BuyerName.key, instance._buyerName);
  writeNotNull(ApiJsonKey.ReceiverId.key, instance._receiverId);
  writeNotNull(ApiJsonKey.ReceiverCode.key, instance._receiverCode);
  writeNotNull(ApiJsonKey.ReceiverName.key, instance._receiverName);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance._managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance._managerName);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.OrderLineId.key, instance._orderLineId);
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
  writeNotNull(ApiJsonKey.OrderQuantity.key, instance._orderQuantity);
  writeNotNull(ApiJsonKey.RequisitionQuantity.key, instance._requisitionQuantity);
  writeNotNull(ApiJsonKey.PickingQuantity.key, instance._pickingQuantity);
  writeNotNull(ApiJsonKey.PickingQuantityLeft.key, instance._pickingQuantityLeft);
  writeNotNull(ApiJsonKey.RequisitionQuantityLeft.key, instance._requisitionQuantityLeft);
  writeNotNull(ApiJsonKey.IssueQuantity.key, instance._issueQuantity);
  writeNotNull(ApiJsonKey.IssueQuantityLeft.key, instance._issueQuantityLeft);
  writeNotNull(ApiJsonKey.IssueDueDate.key, instance._issueDueDate);
  writeNotNull(ApiJsonKey.DeliveryTypeId.key, instance._deliveryTypeId);
  writeNotNull(ApiJsonKey.DeliveryTypeCode.key, instance._deliveryTypeCode);
  writeNotNull(ApiJsonKey.DeliveryTypeName.key, instance._deliveryTypeName);
  writeNotNull(ApiJsonKey.ConfirmType.key, instance._confirmType);
  writeNotNull(ApiJsonKey.UnitPrice.key, instance._unitPrice);
  writeNotNull(ApiJsonKey.Currency.key, instance._currency);
  writeNotNull(ApiJsonKey.VatRate.key, instance._vatRate);
  writeNotNull(ApiJsonKey.VatIncluded.key, instance._vatIncluded);
  writeNotNull(ApiJsonKey.NetAmount.key, instance._netAmount);
  writeNotNull(ApiJsonKey.VatAmount.key, instance._vatAmount);
  writeNotNull(ApiJsonKey.GrossAmount.key, instance._grossAmount);
  return val;
}
