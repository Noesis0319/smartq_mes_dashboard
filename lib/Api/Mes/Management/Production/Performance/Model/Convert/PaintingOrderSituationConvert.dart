part of '../Dto/PaintingOrderSituation.dart';

PaintingOrderSituationDto _$PaintingOrderSituationDtoFromJson(Map<String, dynamic> json) => PaintingOrderSituationDto(
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineOrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.PlanDate.key] as String?,
      json[ApiJsonKey.PlanType.key] as String?,
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
      json[ApiJsonKey.Memo.key] as String?,
      (json[ApiJsonKey.OrderLines.key] as List<dynamic>?)
          ?.map((e) => PaintingOrderSituationOrderLineDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.Workers.key] as List<dynamic>?)
          ?.map((e) => PaintingOrderSituationWorkerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaintingOrderSituationDtoToJson(PaintingOrderSituationDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.MachineOrderIndex.key, instance._machineOrderIndex);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.PlanDate.key, instance._planDate);
  writeNotNull(ApiJsonKey.PlanType.key, instance._planType);
  writeNotNull(ApiJsonKey.ShiftName.key, instance._shiftName);
  writeNotNull(ApiJsonKey.OrderStatus.key, instance._orderStatus);
  writeNotNull(ApiJsonKey.OrderNumber.key, instance._orderNumber);
  writeNotNull(ApiJsonKey.CycleTime.key, instance._cycleTime);
  writeNotNull(ApiJsonKey.PlanStartTime.key, instance._planStartTime);
  writeNotNull(ApiJsonKey.PlanEndTime.key, instance._planEndTime);
  writeNotNull(ApiJsonKey.PlanOperatingTime.key, instance._planOperatingTime);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance._actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance._actualEndTime);
  writeNotNull(ApiJsonKey.RealWorkTime.key, instance._realWorkTime);
  writeNotNull(ApiJsonKey.RealUpTime.key, instance._realUpTime);
  writeNotNull(ApiJsonKey.Downtime.key, instance._downtime);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance._latestDowntimeReasonName);
  writeNotNull(ApiJsonKey.CompletionRateAverage.key, instance._completionRateAverage);
  writeNotNull(ApiJsonKey.TargetCompletionRateAverage.key, instance._targetCompletionRateAverage);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.OrderLines.key, instance._orderLines);
  writeNotNull(ApiJsonKey.Workers.key, instance._workers);
  return val;
}

PaintingOrderSituationOrderLineDto _$OrderLineDtoFromJson(Map<String, dynamic> json) =>
    PaintingOrderSituationOrderLineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.ProductionType.key] as String?,
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
      json[ApiJsonKey.LotNumber.key] as String?,
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      (json[ApiJsonKey.CategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      json[ApiJsonKey.ItemModelName.key] as String?,
      json[ApiJsonKey.ItemColorName.key] as String?,
      json[ApiJsonKey.ItemManufacturerName.key] as String?,
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

Map<String, dynamic> _$OrderLineDtoToJson(PaintingOrderSituationOrderLineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.ProductionType.key, instance._productionType);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
  writeNotNull(ApiJsonKey.LotNumber.key, instance._lotNumber);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.CategoryId.key, instance._categoryId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemModelName.key, instance._itemModelName);
  writeNotNull(ApiJsonKey.ItemColorName.key, instance._itemColorName);
  writeNotNull(ApiJsonKey.ItemManufacturerName.key, instance._itemManufacturerName);
  val[ApiJsonKey.EffectiveCavity.key] = instance._effectiveCavity;
  writeNotNull(ApiJsonKey.PlanQuantity.key, instance._planQuantity);
  writeNotNull(ApiJsonKey.ProductionQuantity.key, instance._productionQuantity);
  writeNotNull(ApiJsonKey.EffectiveQuantity.key, instance._effectiveQuantity);
  writeNotNull(ApiJsonKey.DefectQuantity.key, instance._defectQuantity);
  writeNotNull(ApiJsonKey.DefectReason.key, instance._defectReason);
  writeNotNull(ApiJsonKey.CompletionRate.key, instance._completionRate);
  writeNotNull(ApiJsonKey.ExpectedCompletionRate.key, instance._expectedCompletionRate);
  writeNotNull(ApiJsonKey.OrderCycleTime.key, instance._orderCycleTime);
  writeNotNull(ApiJsonKey.OrderRealWorkTime.key, instance._orderRealWorkTime);
  writeNotNull(ApiJsonKey.OrderCycleTimeSeconds.key, instance._orderCycleTimeSeconds);
  writeNotNull(ApiJsonKey.OrderRealWorkTimeMinutes.key, instance._orderRealWorkTimeMinutes);
  writeNotNull(ApiJsonKey.TargetQuantity.key, instance._targetQuantity);
  writeNotNull(ApiJsonKey.MiniteTargetQuantity.key, instance._miniteTargetQuantity);
  writeNotNull(ApiJsonKey.TargetCompletionRate.key, instance._targetCompletionRate);
  return val;
}

PaintingOrderSituationWorkerDto _$WorkerDtoFromJson(Map<String, dynamic> json) => PaintingOrderSituationWorkerDto(
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

Map<String, dynamic> _$WorkerDtoToJson(PaintingOrderSituationWorkerDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.WorkerId.key, instance._workerId);
  writeNotNull(ApiJsonKey.WorkerCode.key, instance._workerCode);
  writeNotNull(ApiJsonKey.WorkerName.key, instance._workerName);
  writeNotNull(ApiJsonKey.WorkerStatus.key, instance._workerStatus);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance._actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance._actualEndTime);
  writeNotNull(ApiJsonKey.ActualWorkTime.key, instance._actualWorkTime);
  writeNotNull(ApiJsonKey.OffDutyTime.key, instance._offDutyTime);
  writeNotNull(ApiJsonKey.ReworkTime.key, instance._reworkTime);
  return val;
}
