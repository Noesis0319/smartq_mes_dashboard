part of '../Dto/HandworkOrderSituation.dart';

HandworkOrderSituationDto _$HandworkOrderSituationDtoFromJson(Map<String, dynamic> json) => HandworkOrderSituationDto(
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineOrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.ShiftName.key] as String?,
      json[ApiJsonKey.OrderStatus.key] as String?,
      json[ApiJsonKey.OrderNumber.key] as String?,
      json[ApiJsonKey.CycleTime.key] as String?,
      json[ApiJsonKey.PlanStartTime.key] as String?,
      json[ApiJsonKey.PlanEndTime.key] as String?,
      json[ApiJsonKey.PlanOperatingTime.key] as String?,
      json[ApiJsonKey.ActualStartTime.key] as String?,
      json[ApiJsonKey.ActualEndTime.key] as String?,
      json[ApiJsonKey.RealWorkTime.key] as String?,
      json[ApiJsonKey.RealUpTime.key] as String?,
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
      json[ApiJsonKey.CompletionRateAverage.key],
      json[ApiJsonKey.TargetCompletionRateAverage.key],
      (json[ApiJsonKey.OrderLines.key] as List<dynamic>?)
          ?.map((e) => HandworkOrderSituationOrderLineDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.Workers.key] as List<dynamic>?)
          ?.map((e) => HandworkOrderSituationWorkerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HandworkOrderSituationDtoToJson(HandworkOrderSituationDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.OrderId.key, instance.orderId);
  writeNotNull(ApiJsonKey.FactoryId.key, instance.factoryId);
  writeNotNull(ApiJsonKey.MachineId.key, instance.machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance.machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance.machineName);
  writeNotNull(ApiJsonKey.MachineOrderIndex.key, instance.machineOrderIndex);
  writeNotNull(ApiJsonKey.LineId.key, instance.lineId);
  writeNotNull(ApiJsonKey.ShiftName.key, instance.shiftName);
  writeNotNull(ApiJsonKey.OrderStatus.key, instance.orderStatus);
  writeNotNull(ApiJsonKey.OrderNumber.key, instance.orderNumber);
  writeNotNull(ApiJsonKey.CycleTime.key, instance.cycleTime);
  writeNotNull(ApiJsonKey.PlanStartTime.key, instance.planStartTime);
  writeNotNull(ApiJsonKey.PlanEndTime.key, instance.planEndTime);
  writeNotNull(ApiJsonKey.PlanOperatingTime.key, instance.planOperatingTime);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance.actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance.actualEndTime);
  writeNotNull(ApiJsonKey.RealWorkTime.key, instance.realWorkTime);
  writeNotNull(ApiJsonKey.RealUpTime.key, instance.realUpTime);
  writeNotNull(ApiJsonKey.Downtime.key, instance.downtime);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance.latestDowntimeReasonName);
  writeNotNull(ApiJsonKey.CompletionRateAverage.key, instance._completionRateAverage);
  writeNotNull(ApiJsonKey.TargetCompletionRateAverage.key, instance._targetCompletionRateAverage);
  writeNotNull(ApiJsonKey.OrderLines.key, instance.orderLines);
  writeNotNull(ApiJsonKey.Workers.key, instance.workers);
  return val;
}

HandworkOrderSituationOrderLineDto _$OrderLineDtoFromJson(Map<String, dynamic> json) =>
    HandworkOrderSituationOrderLineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
      json[ApiJsonKey.LotNumber.key] as String?,
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      (json[ApiJsonKey.CategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      (json[ApiJsonKey.EffectiveCavity.key] as num?)?.toInt(),
      json[ApiJsonKey.PlanQuantity.key],
      json[ApiJsonKey.ProductionQuantity.key],
      json[ApiJsonKey.EffectiveQuantity.key],
      json[ApiJsonKey.DefectQuantity.key],
      json[ApiJsonKey.DefectReason.key] as String?,
      json[ApiJsonKey.CompletionRate.key],
      json[ApiJsonKey.ExpectedCompletionRate.key],
      json[ApiJsonKey.OrderCycleTime.key] as String?,
      json[ApiJsonKey.OrderRealWorkTime.key] as String?,
      (json[ApiJsonKey.OrderCycleTimeSeconds.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderRealWorkTimeMinutes.key] as num?)?.toInt(),
      json[ApiJsonKey.TargetQuantity.key],
      json[ApiJsonKey.MiniteTargetQuantity.key],
      json[ApiJsonKey.TargetCompletionRate.key],
    );

Map<String, dynamic> _$OrderLineDtoToJson(HandworkOrderSituationOrderLineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance.id);
  writeNotNull(ApiJsonKey.OrderId.key, instance.orderId);
  writeNotNull(ApiJsonKey.LotId.key, instance.lotId);
  writeNotNull(ApiJsonKey.LotNumber.key, instance.lotNumber);
  writeNotNull(ApiJsonKey.ItemId.key, instance.itemId);
  writeNotNull(ApiJsonKey.CategoryId.key, instance.categoryId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance.itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance.itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance.itemNumber);
  writeNotNull(ApiJsonKey.EffectiveCavity.key, instance.effectiveCavity);
  writeNotNull(ApiJsonKey.PlanQuantity.key, instance.planQuantity);
  writeNotNull(ApiJsonKey.ProductionQuantity.key, instance.productionQuantity);
  writeNotNull(ApiJsonKey.EffectiveQuantity.key, instance.effectiveQuantity);
  writeNotNull(ApiJsonKey.DefectQuantity.key, instance.defectQuantity);
  writeNotNull(ApiJsonKey.DefectReason.key, instance.defectReason);
  writeNotNull(ApiJsonKey.CompletionRate.key, instance.completionRate);
  writeNotNull(ApiJsonKey.ExpectedCompletionRate.key, instance.expectedCompletionRate);
  writeNotNull(ApiJsonKey.OrderCycleTime.key, instance.orderCycleTime);
  writeNotNull(ApiJsonKey.OrderRealWorkTime.key, instance.orderRealWorkTime);
  writeNotNull(ApiJsonKey.OrderCycleTimeSeconds.key, instance.orderCycleTimeSeconds);
  writeNotNull(ApiJsonKey.OrderRealWorkTimeMinutes.key, instance.orderRealWorkTimeMinutes);
  writeNotNull(ApiJsonKey.TargetQuantity.key, instance._targetQuantity);
  writeNotNull(ApiJsonKey.MiniteTargetQuantity.key, instance._miniteTargetQuantity);
  writeNotNull(ApiJsonKey.TargetCompletionRate.key, instance._targetCompletionRate);
  return val;
}

HandworkOrderSituationWorkerDto _$WorkerDtoFromJson(Map<String, dynamic> json) => HandworkOrderSituationWorkerDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.WorkerId.key] as num?)?.toInt(),
      json[ApiJsonKey.WorkerCode.key] as String?,
      json[ApiJsonKey.WorkerName.key] as String?,
      json[ApiJsonKey.WorkerStatus.key] as String?,
      json[ApiJsonKey.ActualStartTime.key] as String?,
      json[ApiJsonKey.ActualEndTime.key] as String?,
      json[ApiJsonKey.ActualWorkTime.key] as String?,
      json[ApiJsonKey.OffDutyTime.key] as String?,
      json[ApiJsonKey.ReworkTime.key] as String?,
    );

Map<String, dynamic> _$WorkerDtoToJson(HandworkOrderSituationWorkerDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance.id);
  writeNotNull(ApiJsonKey.OrderId.key, instance.orderId);
  writeNotNull(ApiJsonKey.WorkerId.key, instance.workerId);
  writeNotNull(ApiJsonKey.WorkerCode.key, instance.workerCode);
  writeNotNull(ApiJsonKey.WorkerName.key, instance.workerName);
  writeNotNull(ApiJsonKey.WorkerStatus.key, instance.workerStatus);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance.actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance.actualEndTime);
  writeNotNull(ApiJsonKey.ActualWorkTime.key, instance.actualWorkTime);
  writeNotNull(ApiJsonKey.OffDutyTime.key, instance.offDutyTime);
  writeNotNull(ApiJsonKey.ReworkTime.key, instance.reworkTime);
  return val;
}
