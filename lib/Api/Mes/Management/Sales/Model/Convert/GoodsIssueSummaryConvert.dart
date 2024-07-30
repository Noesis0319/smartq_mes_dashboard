part of '../Dto/GoodsIssueSummary.dart';

GoodsIssueSummaryDto _$GoodsIssueSummaryDtoFromJson(Map<String, dynamic> json) => GoodsIssueSummaryDto(
      (json[ApiJsonKey.IssueId.key] as num?)?.toInt(),
  $enumDecodeNullable(_$EnrollmentTypeEnumMap, json[ApiJsonKey.EnrollmentType.key]),
      json[ApiJsonKey.IssueNumber.key] as String?,
      json[ApiJsonKey.IssueTime.key] as String?,
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      (json[ApiJsonKey.BuyerId.key] as num?)?.toInt(),
      json[ApiJsonKey.BuyerCode.key] as String?,
      json[ApiJsonKey.BuyerName.key] as String?,
      json[ApiJsonKey.BuyerBrn.key] as String?,
      (json[ApiJsonKey.ReceiverId.key] as num?)?.toInt(),
      json[ApiJsonKey.ReceiverCode.key] as String?,
      json[ApiJsonKey.ReceiverName.key] as String?,
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ManagerCode.key] as String?,
      json[ApiJsonKey.ManagerName.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      json[ApiJsonKey.DueMonth.key] as String?,
      (json[ApiJsonKey.PickingId.key] as num?)?.toInt(),
      json[ApiJsonKey.IssueCompleted.key] as bool?,
      (json[ApiJsonKey.IssueLineId.key] as num?)?.toInt(),
  $enumDecodeNullable(_$GoodsIssueTypeEnumMap, json[ApiJsonKey.IssueType.key]),
      (json[ApiJsonKey.SalesOrderLineId.key] as num?)?.toInt(),
      json[ApiJsonKey.IssueDueDate.key] as String?,
      json[ApiJsonKey.IssueQuantityLeft.key],
      (json[ApiJsonKey.SubcontractOrderLineId.key] as num?)?.toInt(),
      json[ApiJsonKey.IssueQuantity.key],
      json[ApiJsonKey.ReturnQuantity.key],
      json[ApiJsonKey.NonReturnQuantity.key],
      json[ApiJsonKey.ReturnCompleted.key] as bool?,
  $enumDecodeNullable(_$ConfirmTypeEnumMap, json[ApiJsonKey.ConfirmType.key]),
      json[ApiJsonKey.UnitPrice.key],
  $enumDecodeNullable(_$CurrencyEnumMap, json[ApiJsonKey.Currency.key]),
      json[ApiJsonKey.VatRate.key],
      json[ApiJsonKey.VatIncluded.key] as bool?,
      json[ApiJsonKey.NetAmount.key],
      json[ApiJsonKey.VatAmount.key],
      json[ApiJsonKey.GrossAmount.key],
      json[ApiJsonKey.UseClosing.key] as bool?,
  $enumDecodeNullable(_$InventoryManageTypeEnumMap, json[ApiJsonKey.InventoryManageType.key]),
      json[ApiJsonKey.ClosingQuantity.key],
      json[ApiJsonKey.NonClosingQuantity.key],
      json[ApiJsonKey.ClosingCompleted.key] as bool?,
      json[ApiJsonKey.ClosingStatus.key] as String?,
      json[ApiJsonKey.ClosingNetAmount.key],
      json[ApiJsonKey.ClosingVatAmount.key],
      json[ApiJsonKey.ClosingGrossAmount.key],
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
    );

Map<String, dynamic> _$GoodsIssueSummaryDtoToJson(GoodsIssueSummaryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.IssueId.key, instance._issueId);
  writeNotNull(ApiJsonKey.EnrollmentType.key, instance._enrollmentType);
  writeNotNull(ApiJsonKey.IssueNumber.key, instance._issueNumber);
  writeNotNull(ApiJsonKey.IssueTime.key, instance._issueTime);
  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance._factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance._factoryName);
  writeNotNull(ApiJsonKey.BuyerId.key, instance._buyerId);
  writeNotNull(ApiJsonKey.BuyerCode.key, instance._buyerCode);
  writeNotNull(ApiJsonKey.BuyerName.key, instance._buyerName);
  writeNotNull(ApiJsonKey.BuyerBrn.key, instance._buyerBrn);
  writeNotNull(ApiJsonKey.ReceiverId.key, instance._receiverId);
  writeNotNull(ApiJsonKey.ReceiverCode.key, instance._receiverCode);
  writeNotNull(ApiJsonKey.ReceiverName.key, instance._receiverName);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance._managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance._managerName);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.DueMonth.key, instance._dueMonth);
  writeNotNull(ApiJsonKey.PickingId.key, instance._pickingId);
  writeNotNull(ApiJsonKey.IssueCompleted.key, instance._issueCompleted);
  writeNotNull(ApiJsonKey.IssueLineId.key, instance._issueLineId);
  writeNotNull(ApiJsonKey.IssueType.key, instance._issueType);
  writeNotNull(ApiJsonKey.SalesOrderLineId.key, instance._salesOrderLineId);
  writeNotNull(ApiJsonKey.IssueDueDate.key, instance._issueDueDate);
  writeNotNull(ApiJsonKey.IssueQuantityLeft.key, instance._issueQuantityLeft);
  writeNotNull(ApiJsonKey.SubcontractOrderLineId.key, instance._subcontractOrderLineId);
  writeNotNull(ApiJsonKey.IssueQuantity.key, instance._issueQuantity);
  writeNotNull(ApiJsonKey.ReturnQuantity.key, instance._returnQuantity);
  writeNotNull(ApiJsonKey.NonReturnQuantity.key, instance._nonReturnQuantity);
  writeNotNull(ApiJsonKey.ReturnCompleted.key, instance._returnCompleted);
  writeNotNull(ApiJsonKey.ConfirmType.key, instance._confirmType);
  writeNotNull(ApiJsonKey.UnitPrice.key, instance._unitPrice);
  writeNotNull(ApiJsonKey.Currency.key, instance._currency);
  writeNotNull(ApiJsonKey.VatRate.key, instance._vatRate);
  writeNotNull(ApiJsonKey.VatIncluded.key, instance._vatIncluded);
  writeNotNull(ApiJsonKey.NetAmount.key, instance._netAmount);
  writeNotNull(ApiJsonKey.VatAmount.key, instance._vatAmount);
  writeNotNull(ApiJsonKey.GrossAmount.key, instance._grossAmount);
  writeNotNull(ApiJsonKey.UseClosing.key, instance._useClosing);
  writeNotNull(ApiJsonKey.InventoryManageType.key, instance._inventoryManageType);
  writeNotNull(ApiJsonKey.ClosingQuantity.key, instance._closingQuantity);
  writeNotNull(ApiJsonKey.NonClosingQuantity.key, instance._nonClosingQuantity);
  writeNotNull(ApiJsonKey.ClosingCompleted.key, instance._closingCompleted);
  writeNotNull(ApiJsonKey.ClosingStatus.key, instance._closingStatus);
  writeNotNull(ApiJsonKey.ClosingNetAmount.key, instance._closingNetAmount);
  writeNotNull(ApiJsonKey.ClosingVatAmount.key, instance._closingVatAmount);
  writeNotNull(ApiJsonKey.ClosingGrossAmount.key, instance._closingGrossAmount);
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
  return val;
}
const _$GoodsIssueTypeEnumMap = {
  GoodsIssueType.Standard: 'Standard',
  GoodsIssueType.Subcontract: 'Subcontract',
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

const _$InventoryManageTypeEnumMap = {
  InventoryManageType.LabelOriented: 'LabelOriented',
  InventoryManageType.Automatic: 'Automatic',
};

const _$EnrollmentTypeEnumMap = {
  EnrollmentType.ReferenceNothing: 'ReferenceNothing',
  EnrollmentType.ReferencePicking: 'ReferencePicking',
  EnrollmentType.ReferenceOrder: 'ReferenceOrder',
  EnrollmentType.LabelNumbering: 'LabelNumbering',
  EnrollmentType.ManuallyNumbering: 'ManuallyNumbering',
};