
part of '../Dto/PaintingMachineOrderSituation.dart';

PaintingMachineOrderSituationDto _$PaintingMachineOrderSituationDtoFromJson(
        Map<String, dynamic> json) =>
    PaintingMachineOrderSituationDto(
      $enumDecodeNullable(_$RunningStatusEnumMap, json[ApiJsonKey.RunningStatus.key]),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineOrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.ShiftName.key] as String?,
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$OrderStatusEnumMap, json[ApiJsonKey.OrderStatus.key]),
      json[ApiJsonKey.CycleTime.key] as String?,
      json[ApiJsonKey.PlanOperatingTime.key] as String?,
      json[ApiJsonKey.ActualStartTime.key] as String?,
      json[ApiJsonKey.ActualEndTime.key] as String?,
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
      (json[ApiJsonKey.OperatingOrderLines.key] as List<dynamic>?)
          ?.map((e) => PaintingMachineOrderSituationOrderLineDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaintingMachineOrderSituationDtoToJson(
    PaintingMachineOrderSituationDto instance) {
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
  writeNotNull(ApiJsonKey.ShiftName.key, instance.shiftName);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.OrderStatus.key, instance._orderStatus);
  writeNotNull(ApiJsonKey.CycleTime.key, instance.cycleTime);
  writeNotNull(ApiJsonKey.PlanOperatingTime.key, instance._planOperatingTime);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance._actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance._actualEndTime);
  writeNotNull(ApiJsonKey.Downtime.key, instance._downtime);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance._latestDowntimeReasonName);
  writeNotNull(ApiJsonKey.OperatingOrderLines.key, instance._operatingOrderLines);
  return val;
}

PaintingMachineOrderSituationOrderLineDto _$OrderLineDtoFromJson(Map<String, dynamic> json) =>
    PaintingMachineOrderSituationOrderLineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.ProductionType.key] as String?,
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      (json[ApiJsonKey.EffectiveCavity.key] as num?)?.toInt(),
      json[ApiJsonKey.PlanQuantity.key],
      json[ApiJsonKey.ProductionQuantity.key],
      json[ApiJsonKey.EffectiveQuantity.key],
      json[ApiJsonKey.DefectQuantity.key],
      json[ApiJsonKey.DefectReason.key] as String?,
      json[ApiJsonKey.OrderCycleTime.key] as String?,
      json[ApiJsonKey.OrderActualStartTime.key] as String?,
      json[ApiJsonKey.OrderActualEndTime.key] as String?,
    );

Map<String, dynamic> _$OrderLineDtoToJson(PaintingMachineOrderSituationOrderLineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.ProductionType.key, instance._productionType);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.EffectiveCavity.key, instance._effectiveCavity);
  writeNotNull(ApiJsonKey.PlanQuantity.key, instance._planQuantity);
  writeNotNull(ApiJsonKey.ProductionQuantity.key, instance._productionQuantity);
  writeNotNull(ApiJsonKey.EffectiveQuantity.key, instance._effectiveQuantity);
  writeNotNull(ApiJsonKey.DefectQuantity.key, instance._defectQuantity);
  writeNotNull(ApiJsonKey.DefectReason.key, instance._defectReason);
  writeNotNull(ApiJsonKey.OrderCycleTime.key, instance._orderCycleTime);
  writeNotNull(ApiJsonKey.OrderActualStartTime.key, instance._orderActualStartTime);
  writeNotNull(ApiJsonKey.OrderActualEndTime.key, instance._orderActualEndTime);
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