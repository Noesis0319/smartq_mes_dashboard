part of '../Dto/HandworkMachineOrderSituation.dart';

HandworkMachineOrderSituationDto _$HandworkMachineOrderSituationDtoFromJson(Map<String, dynamic> json) =>
    HandworkMachineOrderSituationDto(
      $enumDecodeNullable(_$RunningStatusEnumMap, json[ApiJsonKey.RunningStatus.key]),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineOrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.ShiftName.key] as String?,
      json[ApiJsonKey.MoldCode.key] as String?,
      json[ApiJsonKey.MoldName.key] as String?,
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$OrderStatusEnumMap, json[ApiJsonKey.OrderStatus.key]),
      json[ApiJsonKey.CycleTime.key] as String?,
      json[ApiJsonKey.PlanOperatingTime.key] as String?,
      json[ApiJsonKey.RealWorkTime.key] as String?,
      json[ApiJsonKey.RealUpTime.key] as String?,
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
      json[ApiJsonKey.CompletionRateAverage.key],
      json[ApiJsonKey.TargetCompletionRateAverage.key],
      (json[ApiJsonKey.OperatingOrderLines.key] as List<dynamic>?)
          ?.map((e) => HandworkMachineOrderSituationOrderLineDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HandworkMachineOrderSituationDtoToJson(HandworkMachineOrderSituationDto instance) {
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
  writeNotNull(ApiJsonKey.MoldCode.key, instance._moldCode);
  writeNotNull(ApiJsonKey.MoldName.key, instance._moldName);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.OrderStatus.key, instance._orderStatus);
  writeNotNull(ApiJsonKey.CycleTime.key, instance._cycleTime);
  writeNotNull(ApiJsonKey.PlanOperatingTime.key, instance._planOperatingTime);
  writeNotNull(ApiJsonKey.RealWorkTime.key, instance._realWorkTime);
  writeNotNull(ApiJsonKey.RealUpTime.key, instance._realUpTime);
  writeNotNull(ApiJsonKey.Downtime.key, instance._downtime);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance._latestDowntimeReasonName);
  writeNotNull(ApiJsonKey.CompletionRateAverage.key, instance._completionRateAverage);
  writeNotNull(ApiJsonKey.TargetCompletionRateAverage.key, instance._targetCompletionRateAverage);
  writeNotNull(ApiJsonKey.OperatingOrderLines.key, instance._operatingOrderLines);
  return val;
}

HandworkMachineOrderSituationOrderLineDto _$OrderLineDtoFromJson(Map<String, dynamic> json) =>
    HandworkMachineOrderSituationOrderLineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
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
      json[ApiJsonKey.CompletionRate.key],
      json[ApiJsonKey.ExpectedCompletionRate.key],
      json[ApiJsonKey.DefectiveRate.key],
      json[ApiJsonKey.OrderCycleTime.key] as String?,
      json[ApiJsonKey.OrderRealWorkTime.key] as String?,
      (json[ApiJsonKey.OrderCycleTimeSeconds.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderRealWorkTimeMinutes.key] as num?)?.toInt(),
      json[ApiJsonKey.TargetQuantity.key],
      json[ApiJsonKey.MiniteTargetQuantity.key],
      json[ApiJsonKey.TargetCompletionRate.key],
    );

Map<String, dynamic> _$OrderLineDtoToJson(HandworkMachineOrderSituationOrderLineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
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
  writeNotNull(ApiJsonKey.CompletionRate.key, instance._completionRate);
  writeNotNull(ApiJsonKey.ExpectedCompletionRate.key, instance._expectedCompletionRate);
  writeNotNull(ApiJsonKey.DefectiveRate.key, instance._defectiveRate);
  writeNotNull(ApiJsonKey.OrderCycleTime.key, instance._orderCycleTime);
  writeNotNull(ApiJsonKey.OrderRealWorkTime.key, instance._orderRealWorkTime);
  writeNotNull(ApiJsonKey.OrderCycleTimeSeconds.key, instance._orderCycleTimeSeconds);
  writeNotNull(ApiJsonKey.OrderRealWorkTimeMinutes.key, instance._orderRealWorkTimeMinutes);
  writeNotNull(ApiJsonKey.TargetQuantity.key, instance._targetQuantity);
  writeNotNull(ApiJsonKey.MiniteTargetQuantity.key, instance._minuteTargetQuantity);
  writeNotNull(ApiJsonKey.TargetCompletionRate.key, instance._targetCompletionRate);
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