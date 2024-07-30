part of '../Parameter/PurchaseReceiptSummariesMaterial.dart';

Map<String, dynamic> _purchaseReceiptSummariesMaterialParameterToJson(PurchaseReceiptSummariesMaterialParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.ItemIds.key, instance._itemIds);
  writeNotNull(ApiJsonKey.ReceiptDate1.key, instance._receiptDate1);
  writeNotNull(ApiJsonKey.ReceiptDate2.key, instance._receiptDate2);
  return val;
}