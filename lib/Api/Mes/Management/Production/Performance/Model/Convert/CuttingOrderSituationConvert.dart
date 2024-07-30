
part of '../Dto/CuttingOrderSituation.dart';

CuttingOrderSituationDto _$CuttingOrderSituationDtoFromJson(
        Map<String, dynamic> json) =>
    CuttingOrderSituationDto(
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.MachineOrderIndex.key] as num?)?.toInt(),
      (json[ApiJsonKey.ProcessOrder.key] as num?)?.toInt(),
      json[ApiJsonKey.ProcessName.key] as String?,
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
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
      (json[ApiJsonKey.OrderLines.key] as List<dynamic>?)
          ?.map((e) => CuttingOrderSituationOrderLineDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.OrderMaterials.key] as List<dynamic>?)
          ?.map((e) => CuttingOrderSituationOrderMaterialDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CuttingOrderSituationDtoToJson(
    CuttingOrderSituationDto instance) {
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
  writeNotNull(ApiJsonKey.ProcessOrder.key, instance._processOrder);
  writeNotNull(ApiJsonKey.ProcessName.key, instance._processName);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.ShiftName.key, instance._shiftName);
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
  writeNotNull(ApiJsonKey.OrderMaterials.key, instance._orderMaterials);
  return val;
}

CuttingOrderSituationOrderLineDto _$OrderLineDtoFromJson(Map<String, dynamic> json) => CuttingOrderSituationOrderLineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      json[ApiJsonKey.ItemModelCode.key] as String?,
      json[ApiJsonKey.ItemModelName.key] as String?,
      json[ApiJsonKey.ItemManufactureName.key] as String?,
      json[ApiJsonKey.ItemUnit.key] as String?,
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

Map<String, dynamic> _$OrderLineDtoToJson(CuttingOrderSituationOrderLineDto instance) {
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
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemModelCode.key, instance._itemModelCode);
  writeNotNull(ApiJsonKey.ItemModelName.key, instance._itemModelName);
  writeNotNull(ApiJsonKey.ItemManufactureName.key, instance._itemManufactureName);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
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

CuttingOrderSituationOrderMaterialDto _$OrderMaterialDtoFromJson(Map<String, dynamic> json) =>
    CuttingOrderSituationOrderMaterialDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MaterialId.key] as num?)?.toInt(),
      json[ApiJsonKey.MaterialCode.key] as String?,
      json[ApiJsonKey.MaterialName.key] as String?,
      json[ApiJsonKey.MaterialNumber.key] as String?,
      json[ApiJsonKey.MaterialUnit.key] as String?,
      json[ApiJsonKey.InsertQuantity.key],
      json[ApiJsonKey.TotalLossQuantity.key],
      json[ApiJsonKey.UsedQuantity.key],
    );

Map<String, dynamic> _$OrderMaterialDtoToJson(CuttingOrderSituationOrderMaterialDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.MaterialId.key, instance._materialId);
  writeNotNull(ApiJsonKey.MaterialCode.key, instance._materialCode);
  writeNotNull(ApiJsonKey.MaterialName.key, instance._materialName);
  writeNotNull(ApiJsonKey.MaterialNumber.key, instance._materialNumber);
  writeNotNull(ApiJsonKey.MaterialUnit.key, instance._materialUnit);
  writeNotNull(ApiJsonKey.InsertQuantity.key, instance._insertQuantity);
  writeNotNull(ApiJsonKey.TotalLossQuantity.key, instance._totalLossQuantity);
  writeNotNull(ApiJsonKey.UsedQuantity.key, instance._usedQuantity);
  return val;
}

CuttingOrderSituationOrderMachineDto _$OrderMachineDtoFromJson(Map<String, dynamic> json) =>
    CuttingOrderSituationOrderMachineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.ProcessOrder.key] as num?)?.toInt(),
      json[ApiJsonKey.ProcessName.key] as String?,
      json[ApiJsonKey.IsCollector.key] as bool?,
    );

Map<String, dynamic> _$OrderMachineDtoToJson(CuttingOrderSituationOrderMachineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.ProcessOrder.key, instance._processOrder);
  writeNotNull(ApiJsonKey.ProcessName.key, instance._processName);
  writeNotNull(ApiJsonKey.IsCollector.key, instance._isCollector);
  return val;
}
