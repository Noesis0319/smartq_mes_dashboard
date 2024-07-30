
part of '../Dto/PressOrderSituation.dart';

PressOrderSituationDto _$PressOrderSituationDtoFromJson(
        Map<String, dynamic> json) =>
    PressOrderSituationDto(
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineOrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.ShiftName.key] as String?,
      json[ApiJsonKey.MoldCode.key] as String?,
      json[ApiJsonKey.MoldName.key] as String?,
      json[ApiJsonKey.OrderStatus.key] as String?,
      json[ApiJsonKey.OrderNumber.key] as String?,
      json[ApiJsonKey.CycleTime.key] as String?,
      json[ApiJsonKey.PlanStartTime.key] as String?,
      json[ApiJsonKey.PlanEndTime.key] as String?,
      json[ApiJsonKey.PlanOperatingTime.key] as String?,
      json[ApiJsonKey.ActualStartTime.key] as String?,
      json[ApiJsonKey.ActualEndTime.key] as String?,
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
      (json[ApiJsonKey.OrderLines.key] as List<dynamic>?)
          ?.map((e) => PressOrderSituationOrderLineDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.OrderMolds.key] as List<dynamic>?)
          ?.map((e) => PressOrderSituationOrderMoldDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PressOrderSituationDtoToJson(
    PressOrderSituationDto instance) {
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
  writeNotNull(ApiJsonKey.ShiftName.key, instance._shiftName);
  writeNotNull(ApiJsonKey.MoldCode.key, instance._moldCode);
  writeNotNull(ApiJsonKey.MoldName.key, instance._moldName);
  writeNotNull(ApiJsonKey.OrderStatus.key, instance._orderStatus);
  writeNotNull(ApiJsonKey.OrderNumber.key, instance._orderNumber);
  writeNotNull(ApiJsonKey.CycleTime.key, instance._cycleTime);
  writeNotNull(ApiJsonKey.PlanStartTime.key, instance._planStartTime);
  writeNotNull(ApiJsonKey.PlanEndTime.key, instance._planEndTime);
  writeNotNull(ApiJsonKey.PlanOperatingTime.key, instance._planOperatingTime);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance._actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance._actualEndTime);
  writeNotNull(ApiJsonKey.Downtime.key, instance._downtime);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance._latestDowntimeReasonName);
  writeNotNull(ApiJsonKey.OrderLines.key, instance._orderLines);
  writeNotNull(ApiJsonKey.OrderMolds.key, instance._orderMolds);
  return val;
}

PressOrderSituationOrderLineDto _$OrderLineDtoFromJson(Map<String, dynamic> json) =>
    PressOrderSituationOrderLineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemTextureCode.key] as String?,
      json[ApiJsonKey.ItemTextureName.key] as String?,
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

Map<String, dynamic> _$OrderLineDtoToJson(PressOrderSituationOrderLineDto instance) {
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
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemTextureCode.key, instance._itemTextureCode);
  writeNotNull(ApiJsonKey.ItemTextureName.key, instance._itemTextureName);
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

PressOrderSituationOrderMoldDto _$OrderMoldDtoFromJson(Map<String, dynamic> json) =>
    PressOrderSituationOrderMoldDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MoldId.key] as num?)?.toInt(),
      json[ApiJsonKey.MoldCode.key] as String?,
      json[ApiJsonKey.MoldName.key] as String?,
      json[ApiJsonKey.MoldNumber.key] as String?,
      json[ApiJsonKey.MoldSpec.key] as String?,
      (json[ApiJsonKey.ProcessOrder.key] as num?)?.toInt(),
      json[ApiJsonKey.ProcessName.key] as String?,
      json[ApiJsonKey.DieHieght.key],
      json[ApiJsonKey.DiePitch.key],
      (json[ApiJsonKey.Count.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$OrderMoldDtoToJson(PressOrderSituationOrderMoldDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.MoldId.key, instance._moldId);
  writeNotNull(ApiJsonKey.MoldCode.key, instance._moldCode);
  writeNotNull(ApiJsonKey.MoldName.key, instance._moldName);
  writeNotNull(ApiJsonKey.MoldNumber.key, instance._moldNumber);
  writeNotNull(ApiJsonKey.MoldSpec.key, instance._moldSpec);
  writeNotNull(ApiJsonKey.ProcessOrder.key, instance._processOrder);
  writeNotNull(ApiJsonKey.ProcessName.key, instance._processName);
  writeNotNull(ApiJsonKey.DieHieght.key, instance._dieHieght);
  writeNotNull(ApiJsonKey.DiePitch.key, instance._diePitch);
  writeNotNull(ApiJsonKey.Count.key, instance._count);
  return val;
}
