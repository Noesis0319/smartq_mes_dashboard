
part of '../Dto/ProductionOrderAggregate.dart';

ProductionOrderAggregateDto _$ProductionOrderAggregateDtoFromJson(
        Map<String, dynamic> json) =>
    ProductionOrderAggregateDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.ProcessType.key] as String?,
      (json[ApiJsonKey.ProcessCategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.ProcessCategoryName.key] as String?,
      json[ApiJsonKey.OrderNumber.key] as String?,
      json[ApiJsonKey.PlanDate.key] as String?,
      json[ApiJsonKey.PlanType.key] as String?,
      json[ApiJsonKey.OrderStatus.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      json[ApiJsonKey.PlanStartTime.key] as String?,
      json[ApiJsonKey.PlanEndTime.key] as String?,
      json[ApiJsonKey.PlanBreakTime.key] as String?,
      json[ApiJsonKey.PlanOperatingTime.key] as String?,
      json[ApiJsonKey.ActualStartTime.key] as String?,
      json[ApiJsonKey.ActualEndTime.key] as String?,
      json[ApiJsonKey.ActualWorkTime.key] as String?,
      json[ApiJsonKey.RealWorkTime.key] as String?,
      json[ApiJsonKey.UpTime.key] as String?,
      json[ApiJsonKey.RealUpTime.key] as String?,
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.DownRate.key],
      json[ApiJsonKey.PauseTime.key] as String?,
      json[ApiJsonKey.CycleTime.key] as String?,
      (json[ApiJsonKey.CycleCount.key] as num?)?.toInt(),
      (json[ApiJsonKey.ManagerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ManagerCode.key] as String?,
      json[ApiJsonKey.ManagerName.key] as String?,
      (json[ApiJsonKey.ShiftId.key] as num?)?.toInt(),
      json[ApiJsonKey.ShiftCode.key] as String?,
      json[ApiJsonKey.ShiftName.key] as String?,
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.LineCode.key] as String?,
      json[ApiJsonKey.LineName.key] as String?,
      (json[ApiJsonKey.MoldId.key] as num?)?.toInt(),
      json[ApiJsonKey.MoldCode.key] as String?,
      json[ApiJsonKey.MoldName.key] as String?,
      json[ApiJsonKey.MoldNumber.key] as String?,
      json[ApiJsonKey.MoldSpec.key] as String?,
      (json[ApiJsonKey.LatestDowntimeReasonId.key] as num?)?.toInt(),
      json[ApiJsonKey.LatestDowntimeReasonCode.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
      (json[ApiJsonKey.LineItems.key] as List<dynamic>?)
          ?.map((e) => ProductionOrderAggregateLineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.Materials.key] as List<dynamic>?)
          ?.map((e) => ProductionOrderAggregateMaterial.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.Workers.key] as List<dynamic>?)
          ?.map((e) => ProductionOrderAggregateWorker.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.PressMolds.key] as List<dynamic>?)
          ?.map((e) => ProductionOrderAggregatePressMold.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.CuttingMachines.key] as List<dynamic>?)
          ?.map((e) => ProductionOrderAggregateCuttingMachine.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.ProductionBases.key] as List<dynamic>?)
          ?.map((e) => ProductionOrderAggregateBasis.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductionOrderAggregateDtoToJson(
    ProductionOrderAggregateDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.ProcessType.key, instance._processType);
  writeNotNull(ApiJsonKey.ProcessCategoryId.key, instance._processCategoryId);
  writeNotNull(ApiJsonKey.ProcessCategoryName.key, instance._processCategoryName);
  writeNotNull(ApiJsonKey.OrderNumber.key, instance._orderNumber);
  writeNotNull(ApiJsonKey.PlanDate.key, instance._planDate);
  writeNotNull(ApiJsonKey.PlanType.key, instance._planType);
  writeNotNull(ApiJsonKey.OrderStatus.key, instance._orderStatus);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.PlanStartTime.key, instance._planStartTime);
  writeNotNull(ApiJsonKey.PlanEndTime.key, instance._planEndTime);
  writeNotNull(ApiJsonKey.PlanBreakTime.key, instance._planBreakTime);
  writeNotNull(ApiJsonKey.PlanOperatingTime.key, instance._planOperatingTime);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance._actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance._actualEndTime);
  writeNotNull(ApiJsonKey.ActualWorkTime.key, instance._actualWorkTime);
  writeNotNull(ApiJsonKey.RealWorkTime.key, instance._realWorkTime);
  writeNotNull(ApiJsonKey.UpTime.key, instance._upTime);
  writeNotNull(ApiJsonKey.RealUpTime.key, instance._realUpTime);
  writeNotNull(ApiJsonKey.Downtime.key, instance._downtime);
  writeNotNull(ApiJsonKey.DownRate.key, instance._downRate);
  writeNotNull(ApiJsonKey.PauseTime.key, instance._pauseTime);
  writeNotNull(ApiJsonKey.CycleTime.key, instance._cycleTime);
  writeNotNull(ApiJsonKey.CycleCount.key, instance._cycleCount);
  writeNotNull(ApiJsonKey.ManagerId.key, instance._managerId);
  writeNotNull(ApiJsonKey.ManagerCode.key, instance._managerCode);
  writeNotNull(ApiJsonKey.ManagerName.key, instance._managerName);
  writeNotNull(ApiJsonKey.ShiftId.key, instance._shiftId);
  writeNotNull(ApiJsonKey.ShiftCode.key, instance._shiftCode);
  writeNotNull(ApiJsonKey.ShiftName.key, instance._shiftName);
  writeNotNull(ApiJsonKey.MachineId.key, instance._machineId);
  writeNotNull(ApiJsonKey.MachineCode.key, instance._machineCode);
  writeNotNull(ApiJsonKey.MachineName.key, instance._machineName);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.LineCode.key, instance._lineCode);
  writeNotNull(ApiJsonKey.LineName.key, instance._lineName);
  writeNotNull(ApiJsonKey.MoldId.key, instance._moldId);
  writeNotNull(ApiJsonKey.MoldCode.key, instance._moldCode);
  writeNotNull(ApiJsonKey.MoldName.key, instance._moldName);
  writeNotNull(ApiJsonKey.MoldNumber.key, instance._moldNumber);
  writeNotNull(ApiJsonKey.MoldSpec.key, instance._moldSpec);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonId.key, instance._latestDowntimeReasonId);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonCode.key, instance._latestDowntimeReasonCode);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance._latestDowntimeReasonName);
  writeNotNull(ApiJsonKey.LineItems.key, instance._lineItems);
  writeNotNull(ApiJsonKey.Materials.key, instance._materials);
  writeNotNull(ApiJsonKey.Workers.key, instance._workers);
  writeNotNull(ApiJsonKey.PressMolds.key, instance.PressMolds);
  writeNotNull(ApiJsonKey.CuttingMachines.key, instance.CuttingMachines);
  writeNotNull(ApiJsonKey.ProductionBases.key, instance.ProductionBases);
  return val;
}

ProductionOrderAggregateLineItem _$LineItemFromJson(Map<String, dynamic> json) => ProductionOrderAggregateLineItem(
  (json[ApiJsonKey.Id.key] as num?)?.toInt(),
  (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
  (json[ApiJsonKey.BomId.key] as num?)?.toInt(),
  (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
  json[ApiJsonKey.LotNubmer.key] as String?,
  json[ApiJsonKey.ManufactureDate.key] as String?,
  json[ApiJsonKey.ProductionType.key] as String?,
  json[ApiJsonKey.InventoryManageType.key] as String?,
  (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
  json[ApiJsonKey.ItemCode.key] as String?,
  json[ApiJsonKey.ItemName.key] as String?,
  json[ApiJsonKey.ItemNumber.key] as String?,
  json[ApiJsonKey.ItemSpec.key] as String?,
  json[ApiJsonKey.ItemUnit.key] as String?,
  json[ApiJsonKey.ItemTextureCode.key] as String?,
  json[ApiJsonKey.ItemTextureName.key] as String?,
  (json[ApiJsonKey.ItemModelId.key] as num?)?.toInt(),
  json[ApiJsonKey.ItemModelCode.key] as String?,
  json[ApiJsonKey.ItemModelName.key] as String?,
  json[ApiJsonKey.ItemManufactureCode.key] as String?,
  json[ApiJsonKey.ItemManufacturerName.key] as String?,
  json[ApiJsonKey.ItemCategoryCode.key] as String?,
  json[ApiJsonKey.ItemCategoryName.key] as String?,
  json[ApiJsonKey.ItemColorCode.key] as String?,
  json[ApiJsonKey.ItemColorName.key] as String?,
  (json[ApiJsonKey.ItemColorRgb.key] as num?)?.toInt(),
  (json[ApiJsonKey.Cavity.key] as num?)?.toInt(),
  json[ApiJsonKey.PlanQuantity.key],
  (json[ApiJsonKey.EffectiveCavity.key] as num?)?.toInt(),
  json[ApiJsonKey.ProductionQuantity.key],
  json[ApiJsonKey.DefectQuantity.key],
  json[ApiJsonKey.EffectiveQuantity.key],
  json[ApiJsonKey.PutAwayQuantity.key],
  json[ApiJsonKey.TargetUnitsPerMinute.key],
  json[ApiJsonKey.TargetUnitsNow.key],
  json[ApiJsonKey.UnitsPerHour.key],
  json[ApiJsonKey.UnitsPerMinute.key],
  json[ApiJsonKey.CompletionRate.key],
  json[ApiJsonKey.ExpectedCompletionRate.key],
  json[ApiJsonKey.TargetCompletionRate.key],
  json[ApiJsonKey.DefectRate.key],
  (json[ApiJsonKey.WorkFlowId.key] as num?)?.toInt(),
  (json[ApiJsonKey.ScheduleId.key] as num?)?.toInt(),
  json[ApiJsonKey.SchedulingNumber.key] as String?,
  json[ApiJsonKey.CustomSerialNumber.key] as String?,
  json[ApiJsonKey.AdditionalSerialNumber.key] as String?,
);

Map<String, dynamic> _$LineItemToJson(ProductionOrderAggregateLineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.BomId.key, instance._bomId);
  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
  writeNotNull(ApiJsonKey.LotNubmer.key, instance._lotNumber);
  writeNotNull(ApiJsonKey.ManufactureDate.key, instance._manufactureDate);
  writeNotNull(ApiJsonKey.ProductionType.key, instance._productionType);
  writeNotNull(ApiJsonKey.InventoryManageType.key, instance._inventoryManageType);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.ItemTextureCode.key, instance._itemTextureCode);
  writeNotNull(ApiJsonKey.ItemTextureName.key, instance._itemTextureName);
  writeNotNull(ApiJsonKey.ItemModelId.key, instance._itemModelId);
  writeNotNull(ApiJsonKey.ItemModelCode.key, instance._itemModelCode);
  writeNotNull(ApiJsonKey.ItemModelName.key, instance._itemModelName);
  writeNotNull(ApiJsonKey.ItemManufactureCode.key, instance._itemManufactureCode);
  writeNotNull(ApiJsonKey.ItemManufacturerName.key, instance._itemManufacturerName);
  writeNotNull(ApiJsonKey.ItemCategoryCode.key, instance._itemCategoryCode);
  writeNotNull(ApiJsonKey.ItemCategoryName.key, instance._itemCategoryName);
  writeNotNull(ApiJsonKey.ItemColorCode.key, instance._itemColorCode);
  writeNotNull(ApiJsonKey.ItemColorName.key, instance._itemColorName);
  writeNotNull(ApiJsonKey.ItemColorRgb.key, instance._itemColorRgb);
  writeNotNull(ApiJsonKey.Cavity.key, instance._cavity);
  writeNotNull(ApiJsonKey.PlanQuantity.key, instance._planQuantity);
  writeNotNull(ApiJsonKey.EffectiveCavity.key, instance._effectiveCavity);
  writeNotNull(ApiJsonKey.ProductionQuantity.key, instance._productionQuantity);
  writeNotNull(ApiJsonKey.DefectQuantity.key, instance._defectQuantity);
  writeNotNull(ApiJsonKey.EffectiveQuantity.key, instance._effectiveQuantity);
  writeNotNull(ApiJsonKey.PutAwayQuantity.key, instance._putAwayQuantity);
  writeNotNull(ApiJsonKey.TargetUnitsPerMinute.key, instance._targetUnitsPerMinute);
  writeNotNull(ApiJsonKey.TargetUnitsNow.key, instance._targetUnitsNow);
  writeNotNull(ApiJsonKey.UnitsPerHour.key, instance._unitsPerHour);
  writeNotNull(ApiJsonKey.UnitsPerMinute.key, instance._unitsPerMinute);
  writeNotNull(ApiJsonKey.CompletionRate.key, instance._completionRate);
  writeNotNull(ApiJsonKey.ExpectedCompletionRate.key, instance._expectedCompletionRate);
  writeNotNull(ApiJsonKey.TargetCompletionRate.key, instance._targetCompletionRate);
  writeNotNull(ApiJsonKey.DefectRate.key, instance._defectRate);
  writeNotNull(ApiJsonKey.WorkFlowId.key, instance._workFlowId);
  writeNotNull(ApiJsonKey.ScheduleId.key, instance._scheduleId);
  writeNotNull(ApiJsonKey.SchedulingNumber.key, instance._schedulingNumber);
  writeNotNull(ApiJsonKey.CustomSerialNumber.key, instance._customSerialNumber);
  writeNotNull(ApiJsonKey.AdditionalSerialNumber.key, instance._additionalSerialNumber);
  return val;
}

ProductionOrderAggregateMaterial _$MaterialFromJson(Map<String, dynamic> json) => ProductionOrderAggregateMaterial(
  (json[ApiJsonKey.Id.key] as num?)?.toInt(),
  (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
  json[ApiJsonKey.UnitRequiredQuantity.key],
  json[ApiJsonKey.UnitEffectiveQuantity.key],
  json[ApiJsonKey.UnitLossQuantity.key],
  json[ApiJsonKey.UnitLossRate.key],
  json[ApiJsonKey.InsertQuantity.key],
  json[ApiJsonKey.BomLossQuantity.key],
  json[ApiJsonKey.OtherLossQuantity.key],
  json[ApiJsonKey.TotalLossQuantity.key],
  json[ApiJsonKey.LossRate.key],
  (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
  json[ApiJsonKey.ItemCode.key] as String?,
  json[ApiJsonKey.ItemName.key] as String?,
  json[ApiJsonKey.ItemNumber.key] as String?,
  json[ApiJsonKey.ItemSpec.key] as String?,
  json[ApiJsonKey.ItemUnit.key] as String?,
  json[ApiJsonKey.InventoryManageType.key] as String?,
  json[ApiJsonKey.ManualInsertQuantity.key],
);

Map<String, dynamic> _$MaterialToJson(ProductionOrderAggregateMaterial instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.UnitRequiredQuantity.key, instance._unitRequiredQuantity);
  writeNotNull(ApiJsonKey.UnitEffectiveQuantity.key, instance._unitEffectiveQuantity);
  writeNotNull(ApiJsonKey.UnitLossQuantity.key, instance._unitLossQuantity);
  writeNotNull(ApiJsonKey.UnitLossRate.key, instance._unitLossRate);
  writeNotNull(ApiJsonKey.InsertQuantity.key, instance._insertQuantity);
  writeNotNull(ApiJsonKey.BomLossQuantity.key, instance._bomLossQuantity);
  writeNotNull(ApiJsonKey.OtherLossQuantity.key, instance._otherLossQuantity);
  writeNotNull(ApiJsonKey.TotalLossQuantity.key, instance._totalLossQuantity);
  writeNotNull(ApiJsonKey.LossRate.key, instance._lossRate);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.InventoryManageType.key, instance._inventoryManageType);
  writeNotNull(ApiJsonKey.ManualInsertQuantity.key, instance._manualInsertQuantity);
  return val;
}

ProductionOrderAggregatePressMold _$PressMoldFromJson(Map<String, dynamic> json) => ProductionOrderAggregatePressMold(
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

Map<String, dynamic> _$PressMoldToJson(ProductionOrderAggregatePressMold instance) {
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
  writeNotNull(ApiJsonKey.DieHieght.key, instance._dieHeight);
  writeNotNull(ApiJsonKey.DiePitch.key, instance._diePitch);
  writeNotNull(ApiJsonKey.Count.key, instance._count);
  return val;
}

ProductionOrderAggregateCuttingMachine _$CuttingMachineFromJson(Map<String, dynamic> json) =>
    ProductionOrderAggregateCuttingMachine(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.MachineId.key] as num?)?.toInt(),
      json[ApiJsonKey.MachineCode.key] as String?,
      json[ApiJsonKey.MachineName.key] as String?,
      (json[ApiJsonKey.ProcessOrder.key] as num?)?.toInt(),
      json[ApiJsonKey.ProcessName.key] as String?,
      (json[ApiJsonKey.CavityCount.key] as num?)?.toInt(),
      json[ApiJsonKey.UnitOperatingTime.key] as String?,
      json[ApiJsonKey.UnitTransferTime.key] as String?,
      json[ApiJsonKey.IsCollector.key] as bool?,
      json[ApiJsonKey.TotalTime.key] as String?,
    );

Map<String, dynamic> _$CuttingMachineToJson(ProductionOrderAggregateCuttingMachine instance) {
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
  writeNotNull(ApiJsonKey.CavityCount.key, instance._cavityCount);
  writeNotNull(ApiJsonKey.UnitOperatingTime.key, instance._unitOperatingTime);
  writeNotNull(ApiJsonKey.UnitTransferTime.key, instance._unitTransferTime);
  writeNotNull(ApiJsonKey.IsCollector.key, instance._isCollector);
  writeNotNull(ApiJsonKey.TotalTime.key, instance._totalTime);
  return val;
}


ProductionOrderAggregateWorker _$WorkerFromJson(Map<String, dynamic> json) => ProductionOrderAggregateWorker(
  (json[ApiJsonKey.Id.key] as num?)?.toInt(),
  (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
  (json[ApiJsonKey.EmployeeId.key] as num?)?.toInt(),
  json[ApiJsonKey.EmployeeCode.key] as String?,
  json[ApiJsonKey.EmployeeName.key] as String?,
  json[ApiJsonKey.ActualStartTime.key] as String?,
  json[ApiJsonKey.ActualEndTime.key] as String?,
  json[ApiJsonKey.ActualWorkTime.key] as String?,
  json[ApiJsonKey.WorkerStatus.key] as String?,
  json[ApiJsonKey.UpTime.key] as String?,
  json[ApiJsonKey.OffDutyTime.key] as String?,
  json[ApiJsonKey.ReworkTime.key] as String?,
  json[ApiJsonKey.LatestOffDutyTime.key] as String?,
  (json[ApiJsonKey.LatestOffDutyReasonId.key] as num?)?.toInt(),
  json[ApiJsonKey.LatestOffDutyReasonCode.key] as String?,
  json[ApiJsonKey.LatestOffDutyReasonName.key] as String?,
  json[ApiJsonKey.LatestReworkTime.key] as String?,
  (json[ApiJsonKey.LatestReworkReasonId.key] as num?)?.toInt(),
  json[ApiJsonKey.LatestReworkReasonCode.key] as String?,
  json[ApiJsonKey.LatestReworkReasonName.key] as String?,
);

Map<String, dynamic> _$WorkerToJson(ProductionOrderAggregateWorker instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.EmployeeId.key, instance._employeeId);
  writeNotNull(ApiJsonKey.EmployeeCode.key, instance._employeeCode);
  writeNotNull(ApiJsonKey.EmployeeName.key, instance._employeeName);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance._actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance._actualEndTime);
  writeNotNull(ApiJsonKey.ActualWorkTime.key, instance._actualWorkTime);
  writeNotNull(ApiJsonKey.WorkerStatus.key, instance._workerStatus);
  writeNotNull(ApiJsonKey.UpTime.key, instance._upTime);
  writeNotNull(ApiJsonKey.OffDutyTime.key, instance._offDutyTime);
  writeNotNull(ApiJsonKey.ReworkTime.key, instance._reworkTime);
  writeNotNull(ApiJsonKey.LatestOffDutyTime.key, instance._latestOffDutyTime);
  writeNotNull(ApiJsonKey.LatestOffDutyReasonId.key, instance._latestOffDutyReasonId);
  writeNotNull(ApiJsonKey.LatestOffDutyReasonCode.key, instance._latestOffDutyReasonCode);
  writeNotNull(ApiJsonKey.LatestOffDutyReasonName.key, instance._latestOffDutyReasonName);
  writeNotNull(ApiJsonKey.LatestReworkTime.key, instance._latestReworkTime);
  writeNotNull(ApiJsonKey.LatestReworkReasonId.key, instance._latestReworkReasonId);
  writeNotNull(ApiJsonKey.LatestReworkReasonCode.key, instance._latestReworkReasonCode);
  writeNotNull(ApiJsonKey.LatestReworkReasonName.key, instance._latestReworkReasonName);
  return val;
}

ProductionOrderAggregateBasis _$BasisFromJson(Map<String, dynamic> json) => ProductionOrderAggregateBasis(
  (json[ApiJsonKey.Id.key] as num?)?.toInt(),
  (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
  (json[ApiJsonKey.BasisId.key] as num?)?.toInt(),
  json[ApiJsonKey.Description.key] as String?,
  (json[ApiJsonKey.ProcessOrder.key] as num?)?.toInt(),
  (json[ApiJsonKey.Frequency.key] as num?)?.toInt(),
  json[ApiJsonKey.UnitOperatingTime.key] as String?,
  json[ApiJsonKey.Speed.key],
  json[ApiJsonKey.Pitch.key],
  (json[ApiJsonKey.LoadingQuantity.key] as num?)?.toInt(),
  json[ApiJsonKey.CycleTime.key] as String?,
);

Map<String, dynamic> _$BasisToJson(ProductionOrderAggregateBasis instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
  writeNotNull(ApiJsonKey.BasisId.key, instance._basisId);
  writeNotNull(ApiJsonKey.Description.key, instance._description);
  writeNotNull(ApiJsonKey.ProcessOrder.key, instance._processOrder);
  writeNotNull(ApiJsonKey.Frequency.key, instance._frequency);
  writeNotNull(ApiJsonKey.UnitOperatingTime.key, instance._unitOperatingTime);
  writeNotNull(ApiJsonKey.Speed.key, instance._speed);
  writeNotNull(ApiJsonKey.Pitch.key, instance._pitch);
  writeNotNull(ApiJsonKey.LoadingQuantity.key, instance._loadingQuantity);
  writeNotNull(ApiJsonKey.CycleTime.key, instance._cycleTime);
  return val;
}

