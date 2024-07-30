
part of '../Dto/GoodsPickingInspect.dart';

GoodsPickingInspectDto _$GoodsPickingInspectDtoFromJson(
        Map<String, dynamic> json) =>
    GoodsPickingInspectDto(
      (json[ApiJsonKey.PickingId.key] as num?)?.toInt(),
      json[ApiJsonKey.PickingType.key] as String?,
      json[ApiJsonKey.PickingNumber.key] as String?,
      json[ApiJsonKey.PickingTime.key] as String?,
      json[ApiJsonKey.IssueCompleted.key] as bool?,
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      (json[ApiJsonKey.ItemCategoryId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ManagerCode.key] as String?,
      json[ApiJsonKey.ManagerName.key] as String?,
      (json[ApiJsonKey.BuyerId.key] as num?)?.toInt(),
      json[ApiJsonKey.BuyerCode.key] as String?,
      json[ApiJsonKey.BuyerName.key] as String?,
      (json[ApiJsonKey.ReceiverId.key] as num?)?.toInt(),
      json[ApiJsonKey.ReceiverCode.key] as String?,
      json[ApiJsonKey.ReceiverName.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      (json[ApiJsonKey.PickingLineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.SalesOrderLineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.SubcontractOrderLineId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      json[ApiJsonKey.ItemUnit.key] as String?,
      json[ApiJsonKey.ItemCategoryCode.key] as String?,
      json[ApiJsonKey.ItemCategoryName.key] as String?,
      json[ApiJsonKey.PickingQty.key],
      (json[ApiJsonKey.WarehouseId.key] as num?)?.toInt(),
      json[ApiJsonKey.WarehouseCode.key] as String?,
      json[ApiJsonKey.FifoStandard.key] as String?,
      $enumDecodeNullable(_$FifoStandardEnumMap, json[ApiJsonKey.FifoStandard.key]),
      (json[ApiJsonKey.DestinationId.key] as num?)?.toInt(),
      json[ApiJsonKey.DestinationCode.key] as String?,
      json[ApiJsonKey.DestinationName.key] as String?,
      (json[ApiJsonKey.LocationGroupId.key] as num?)?.toInt(),
      json[ApiJsonKey.LocationGroupCode.key] as String?,
      json[ApiJsonKey.LocationGroupName.key] as String?,
      (json[ApiJsonKey.TotalInspectionCount.key] as num?)?.toInt(),
      json[ApiJsonKey.InspectionConducted.key] as bool?,
      json[ApiJsonKey.InspectionStatus.key] as String?,
      json[ApiJsonKey.LotNumbers.key] as String?,
      (json[ApiJsonKey.LotIds.key] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$GoodsPickingInspectDtoToJson(
    GoodsPickingInspectDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.PickingId.key, instance._pickingId);
  writeNotNull(ApiJsonKey.PickingType.key, instance._pickingType);
  writeNotNull(ApiJsonKey.PickingNumber.key, instance._pickingNumber);
  writeNotNull(ApiJsonKey.PickingTime.key, instance._pickingTime);
  writeNotNull(ApiJsonKey.IssueCompleted.key, instance._issueCompleted);
  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance._factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance._factoryName);
  writeNotNull(ApiJsonKey.ItemCategoryId.key, instance._itemCategoryId);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance._managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance._managerName);
  writeNotNull(ApiJsonKey.BuyerId.key, instance._buyerId);
  writeNotNull(ApiJsonKey.BuyerCode.key, instance._buyerCode);
  writeNotNull(ApiJsonKey.BuyerName.key, instance._buyerName);
  writeNotNull(ApiJsonKey.ReceiverId.key, instance._receiverId);
  writeNotNull(ApiJsonKey.ReceiverCode.key, instance._receiverCode);
  writeNotNull(ApiJsonKey.ReceiverName.key, instance._receiverName);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.PickingLineId.key, instance._pickingLineId);
  writeNotNull(ApiJsonKey.SalesOrderLineId.key, instance._salesOrderLineId);
  writeNotNull(ApiJsonKey.SubcontractOrderLineId.key, instance._subcontractOrderLineId);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.ItemCategoryCode.key, instance._itemCategoryCode);
  writeNotNull(ApiJsonKey.ItemCategoryName.key, instance._itemCategoryName);
  writeNotNull(ApiJsonKey.PickingQty.key, instance._pickingQty);
  writeNotNull(ApiJsonKey.WarehouseId.key, instance._warehouseId);
  writeNotNull(ApiJsonKey.WarehouseCode.key, instance._warehouseCode);
  writeNotNull(ApiJsonKey.WarehouseName.key, instance._warehouseName);
  writeNotNull(ApiJsonKey.FifoStandard.key, instance._fifoStandard);
  writeNotNull(ApiJsonKey.DestinationId.key, instance._destinationId);
  writeNotNull(ApiJsonKey.DestinationCode.key, instance._destinationCode);
  writeNotNull(ApiJsonKey.DestinationName.key, instance._destinationName);
  writeNotNull(ApiJsonKey.LocationGroupId.key, instance._locationGroupId);
  writeNotNull(ApiJsonKey.LocationGroupCode.key, instance._locationGroupCode);
  writeNotNull(ApiJsonKey.LocationGroupName.key, instance._locationGroupName);
  writeNotNull(ApiJsonKey.TotalInspectionCount.key, instance._totalInspectionCount);
  writeNotNull(ApiJsonKey.InspectionConducted.key, instance._inspectionConducted);
  writeNotNull(ApiJsonKey.InspectionStatus.key, instance._inspectionStatus);
  writeNotNull(ApiJsonKey.LotNumbers.key, instance._lotNumbers);
  writeNotNull(ApiJsonKey.LotIds.key, instance._lotIds);
  return val;
}
const _$FifoStandardEnumMap = {
  FifoStandard.None: 'None',
  FifoStandard.ManufactureDate: 'ManufactureDate',
};