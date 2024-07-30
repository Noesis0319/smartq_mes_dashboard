
part of '../Dto/CuttingMachineOrderSituation.dart';

CuttingMachineOrderSituationDto _$CuttingMachineOrderSituationDtoFromJson(
        Map<String, dynamic> json) =>
    CuttingMachineOrderSituationDto(
      $enumDecodeNullable(_$RunningStatusEnumMap, json[ApiJsonKey.RunningStatus.key]),
      (json[ApiJsonKey.CollectorMachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.CollectorMachineCode.key] as String?,
      json[ApiJsonKey.CollectorMachineName.key] as String?,
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
      json[ApiJsonKey.CycleTimel.key] as String?,
      json[ApiJsonKey.PlanOperatingTime.key] as String?,
      json[ApiJsonKey.ActualStartTime.key] as String?,
      json[ApiJsonKey.ActualEndTime.key] as String?,
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
      (json[ApiJsonKey.OperatingOrderLines.key] as List<dynamic>?)
          ?.map((e) => CuttingMachineOrderSituationOrderLineDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json[ApiJsonKey.OrderMaterials.key] == null
          ? null
          : CuttingMachineOrderSituationOrderMaterialDto.fromJson(
              json[ApiJsonKey.OrderMaterials.key] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CuttingMachineOrderSituationDtoToJson(
    CuttingMachineOrderSituationDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.RunningStatus.key, instance._runningStatus);
  writeNotNull(ApiJsonKey.CollectorMachineId.key, instance._collectorMachineId);
  writeNotNull(ApiJsonKey.CollectorMachineCode.key, instance._collectorMachineCode);
  writeNotNull(ApiJsonKey.CollectorMachineName.key, instance._collectorMachineName);
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
  writeNotNull(ApiJsonKey.CycleTimel.key, instance._cycleTime);
  writeNotNull(ApiJsonKey.PlanOperatingTime.key, instance._planOperatingTime);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance._actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance._actualEndTime);
  writeNotNull(ApiJsonKey.Downtime.key, instance._downtime);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance._latestDowntimeReasonName);
  writeNotNull(ApiJsonKey.OperatingOrderLines.key, instance._operatingOrderLines);
  writeNotNull(ApiJsonKey.OrderMaterials.key, instance._orderMaterials);
  return val;
}

CuttingMachineOrderSituationMachineDto _$MachineDtoFromJson(Map<String, dynamic> json) => CuttingMachineOrderSituationMachineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.Code.key] as String?,
      json[ApiJsonKey.Name.key] as String?,
      (json[ApiJsonKey.OrderIndex.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$MachineDtoToJson(CuttingMachineOrderSituationMachineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.Code.key, instance._code);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(ApiJsonKey.OrderIndex.key, instance._orderIndex);
  return val;
}

CuttingMachineOrderSituationOrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => CuttingMachineOrderSituationOrderDto(
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.ShiftName.key] as String?,
      json[ApiJsonKey.MoldCode.key] as String?,
      json[ApiJsonKey.MoldName.key] as String?,
      json[ApiJsonKey.OrderStatus.key] as String?,
      json[ApiJsonKey.CycleTime.key] as String?,
      json[ApiJsonKey.PlanOperatingTime.key] as String?,
      json[ApiJsonKey.ActualStartTime.key] as String?,
      json[ApiJsonKey.ActualEndTime.key] as String?,
      json[ApiJsonKey.AcutalWorkTime.key] as String?,
      json[ApiJsonKey.UpTime.key] as String?,
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
    );

Map<String, dynamic> _$OrderDtoToJson(CuttingMachineOrderSituationOrderDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.ShiftName.key, instance._shiftName);
  writeNotNull(ApiJsonKey.MoldCode.key, instance._moldCode);
  writeNotNull(ApiJsonKey.MoldName.key, instance._moldName);
  writeNotNull(ApiJsonKey.OrderStatus.key, instance._orderStatus);
  writeNotNull(ApiJsonKey.CycleTime.key, instance._cycleTime);
  writeNotNull(ApiJsonKey.PlanOperatingTime.key, instance._planOperatingTime);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance._actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance._actualEndTime);
  writeNotNull(ApiJsonKey.AcutalWorkTime.key, instance._actualWorkTime);
  writeNotNull(ApiJsonKey.UpTime.key, instance._upTime);
  writeNotNull(ApiJsonKey.Downtime.key, instance._downtime);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance._latestDowntimeReasonName);
  return val;
}

CuttingMachineOrderSituationOrderLineDto _$OrderLineDtoFromJson(Map<String, dynamic> json) => CuttingMachineOrderSituationOrderLineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
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
      (json[ApiJsonKey.OrderLabels.key] as List<dynamic>?)
          ?.map((e) => CuttingMachineOrderSituationOrderLabelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderLineDtoToJson(CuttingMachineOrderSituationOrderLineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
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
  writeNotNull(ApiJsonKey.OrderLabels.key, instance._orderLabels);
  return val;
}

CuttingMachineOrderSituationOrderMachineDto _$OrderMachineDtoFromJson(Map<String, dynamic> json) =>
    CuttingMachineOrderSituationOrderMachineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      json[ApiJsonKey.IsCollector.key] as bool?,
      (json[ApiJsonKey.ProcessOrder.key] as num?)?.toInt(),
      json[ApiJsonKey.ProcessName.key] as String?,
      json[ApiJsonKey.UnitOperatingTime.key] as String?,
      json[ApiJsonKey.UnitTransferTime.key] as String?,
      json[ApiJsonKey.TotalTime.key] as String?,
      (json[ApiJsonKey.CavityCount.key] as num?)?.toInt(),
    );

Map<String, dynamic> _$OrderMachineDtoToJson(CuttingMachineOrderSituationOrderMachineDto instance) {
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
  writeNotNull(ApiJsonKey.IsCollector.key, instance._isCollector);
  writeNotNull(ApiJsonKey.ProcessOrder.key, instance._processOrder);
  writeNotNull(ApiJsonKey.ProcessName.key, instance._processName);
  writeNotNull(ApiJsonKey.UnitOperatingTime.key, instance._unitOperatingTime);
  writeNotNull(ApiJsonKey.UnitTransferTime.key, instance._unitTransferTime);
  writeNotNull(ApiJsonKey.TotalTime.key, instance._totalTime);
  writeNotNull(ApiJsonKey.CavityCount.key, instance._cavityCount);
  return val;
}

CuttingMachineOrderSituationOrderMaterialDto _$OrderMaterialDtoFromJson(Map<String, dynamic> json) =>
    CuttingMachineOrderSituationOrderMaterialDto(
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

Map<String, dynamic> _$OrderMaterialDtoToJson(CuttingMachineOrderSituationOrderMaterialDto instance) {
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

CuttingMachineOrderSituationOrderLabelDto _$OrderLabelDtoFromJson(Map<String, dynamic> json) =>
    CuttingMachineOrderSituationOrderLabelDto(
      (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.LotNumber.key] as String?,
      json[ApiJsonKey.LabelNumber.key] as String?,
      json[ApiJsonKey.InitialQty.key],
      json[ApiJsonKey.InventoryQty.key],
    );

Map<String, dynamic> _$OrderLabelDtoToJson(CuttingMachineOrderSituationOrderLabelDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.LotNumber.key, instance._lotNumber);
  writeNotNull(ApiJsonKey.LabelNumber.key, instance._labelNumber);
  writeNotNull(ApiJsonKey.InitialQty.key, instance._initialQty);
  writeNotNull(ApiJsonKey.InventoryQty.key, instance._inventoryQty);
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