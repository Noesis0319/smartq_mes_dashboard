
part of '../Dto/InspectionMachineOrderSituation.dart';

InspectionMachineOrderSituationDto _$InspectionMachineOrderSituationDtoFromJson(
        Map<String, dynamic> json) =>
    InspectionMachineOrderSituationDto(
      $enumDecodeNullable(_$RunningStatusEnumMap, json[ApiJsonKey.RunningStatus.key]),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineOrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.ShiftName.key] as String?,
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$OrderStatusEnumMap, json[ApiJsonKey.OrderStatus.key]),
      json[ApiJsonKey.PlanOperatingTime.key] as String?,
      json[ApiJsonKey.ActualStartTime.key] as String?,
      json[ApiJsonKey.ActualEndTime.key] as String?,
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
      (json[ApiJsonKey.OperatingOrderLines.key] as List<dynamic>?)
          ?.map((e) => InspectionMachineOrderSituationPostLineItemDto.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InspectionMachineOrderSituationDtoToJson(
    InspectionMachineOrderSituationDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.RunningStatus.key, instance._runningStatus);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.MachineOrderIndex.key, instance._machineOrderIndex);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.ShiftName.key, instance._shiftName);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.OrderStatus.key, instance._orderStatus);
  writeNotNull(ApiJsonKey.PlanOperatingTime.key, instance._planOperatingTime);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance._actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance._actualEndTime);
  writeNotNull(ApiJsonKey.Downtime.key, instance._downtime);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance._latestDowntimeReasonName);
  writeNotNull(ApiJsonKey.OperatingOrderLines.key, instance._operatingOrderLines);
  return val;
}

InspectionMachineOrderSituationPostLineItemDto
    _$InspectionMachineOrderSituationPostLineItemDtoFromJson(
            Map<String, dynamic> json) =>
        InspectionMachineOrderSituationPostLineItemDto(
          (json[ApiJsonKey.Id.key] as num?)?.toInt(),
          (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
          (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
          json[ApiJsonKey.LotNubmer.key] as String?,
          (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
          json[ApiJsonKey.ItemCode.key] as String?,
          json[ApiJsonKey.ItemName.key] as String?,
          json[ApiJsonKey.ItemNumber.key] as String?,
          json[ApiJsonKey.ItemSpec.key] as String?,
          json[ApiJsonKey.ItemUnit.key] as String?,
          json[ApiJsonKey.ItemCategoryCode.key] as String?,
          json[ApiJsonKey.ItemCategoryName.key] as String?,
          json[ApiJsonKey.PlanQuantity.key],
          json[ApiJsonKey.ProductionQuantity.key],
          json[ApiJsonKey.DefectQuantity.key],
          json[ApiJsonKey.EffectiveQuantity.key],
          json[ApiJsonKey.DefectReason.key] as String?,
          (json[ApiJsonKey.PreviousLotRecords.key] as List<dynamic>?)
              ?.map((e) =>
                  InspectionMachineOrderSituationPreviousLotRecordDto.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$InspectionMachineOrderSituationPostLineItemDtoToJson(
    InspectionMachineOrderSituationPostLineItemDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
  writeNotNull(ApiJsonKey.LotNubmer.key, instance._lotNubmer);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.ItemCategoryCode.key, instance._itemCategoryCode);
  writeNotNull(ApiJsonKey.ItemCategoryName.key, instance._itemCategoryName);
  writeNotNull(ApiJsonKey.PlanQuantity.key, instance._planQuantity);
  writeNotNull(ApiJsonKey.ProductionQuantity.key, instance._productionQuantity);
  writeNotNull(ApiJsonKey.DefectQuantity.key, instance._defectQuantity);
  writeNotNull(ApiJsonKey.EffectiveQuantity.key, instance._effectiveQuantity);
  writeNotNull(ApiJsonKey.DefectReason.key, instance._defectReason);
  writeNotNull(ApiJsonKey.PreviousLotRecords.key, instance._previousLotRecords);
  return val;
}

InspectionMachineOrderSituationPreviousLotRecordDto
    _$InspectionMachineOrderSituationPreviousLotRecordDtoFromJson(
            Map<String, dynamic> json) =>
        InspectionMachineOrderSituationPreviousLotRecordDto(
          (json[ApiJsonKey.Id.key] as num?)?.toInt(),
          (json[ApiJsonKey.PostLineId.key] as num?)?.toInt(),
          (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
          (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
          json[ApiJsonKey.ItemCode.key] as String?,
          json[ApiJsonKey.ItemName.key] as String?,
          json[ApiJsonKey.ItemNumber.key] as String?,
          json[ApiJsonKey.ItemUnit.key] as String?,
          (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
          json[ApiJsonKey.LotNumber.key] as String?,
          json[ApiJsonKey.PreviousProcess.key] as String?,
          json[ApiJsonKey.CurrentProcess.key] as String?,
          json[ApiJsonKey.InsertedQuantity.key],
          json[ApiJsonKey.TotalDefectQuantity.key],
          json[ApiJsonKey.DefectQuantity.key],
        );

Map<String, dynamic>
    _$InspectionMachineOrderSituationPreviousLotRecordDtoToJson(
        InspectionMachineOrderSituationPreviousLotRecordDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.PostLineId.key, instance._postLineId);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
  writeNotNull(ApiJsonKey.LotNumber.key, instance._lotNumber);
  writeNotNull(ApiJsonKey.PreviousProcess.key, instance._previousProcess);
  writeNotNull(ApiJsonKey.CurrentProcess.key, instance._currentProcess);
  writeNotNull(ApiJsonKey.InsertedQuantity.key, instance._insertedQuantity);
  writeNotNull(ApiJsonKey.TotalDefectQuantity.key, instance._totalDefectQuantity);
  writeNotNull(ApiJsonKey.DefectQuantity.key, instance._defectQuantity);
  return val;
}
const _$RunningStatusEnumMap = {
  RunningStatus.Running: 'Running',
  RunningStatus.Paused: 'Paused',
  RunningStatus.Waiting: 'Waiting',
  RunningStatus.Stopped: 'Stopped',
};
const _$OrderStatusEnumMap = {
  OrderStatus.Ordered: 'Ordered',
  OrderStatus.Running: 'Running',
  OrderStatus.Paused: 'Paused',
  OrderStatus.Completed: 'Completed',
};