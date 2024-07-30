
part of '../Dto/ProductionOrderSummary.dart';

ProductionOrderSummary _$ProductionOrderSummaryFromJson(
        Map<String, dynamic> json) =>
    ProductionOrderSummary(
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$ProcessTypeEnumMap, json[ApiJsonKey.ProcessType.key]),
      (json[ApiJsonKey.ProcessCategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.ProcessCategoryName.key] as String?,
      json[ApiJsonKey.OrderNumber.key] as String?,
      json[ApiJsonKey.PlanDate.key] as String?,
      $enumDecodeNullable(_$PlanTypeEnumMap, json[ApiJsonKey.PlanType.key]),
      $enumDecodeNullable(_$OrderStatusEnumMap, json[ApiJsonKey.OrderStatus.key]),
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
      (json[ApiJsonKey.OrderLineId.key] as num?)?.toInt(),
      json[ApiJsonKey.PlanQuantity.key],
      (json[ApiJsonKey.Cavity.key] as num?)?.toInt(),
      (json[ApiJsonKey.EffectiveCavity.key] as num?)?.toInt(),
      json[ApiJsonKey.ProductionQuantity.key],
      json[ApiJsonKey.DefectQuantity.key],
      json[ApiJsonKey.EffectiveQuantity.key],
      json[ApiJsonKey.PutAwayQuantity.key],
      (json[ApiJsonKey.BomId.key] as num?)?.toInt(),
      (json[ApiJsonKey.LotId.key] as num?)?.toInt(),
      json[ApiJsonKey.LotNumber.key] as String?,
      $enumDecodeNullable(_$ProductionTypeEnumMap, json[ApiJsonKey.ProductionType.key]),
      (json[ApiJsonKey.ItemId.key] as num?)?.toInt(),
      json[ApiJsonKey.ItemCode.key] as String?,
      json[ApiJsonKey.ItemName.key] as String?,
      json[ApiJsonKey.ItemNumber.key] as String?,
      json[ApiJsonKey.ItemSpec.key] as String?,
      json[ApiJsonKey.ItemUnit.key] as String?,
      json[ApiJsonKey.ItemTextureCode.key] as String?,
      json[ApiJsonKey.ItemTextureName.key] as String?,
      json[ApiJsonKey.ItemCategoryCode.key] as String?,
      json[ApiJsonKey.ItemCategoryName.key] as String?,
      json[ApiJsonKey.ItemModelCode.key] as String?,
      json[ApiJsonKey.ItemModelName.key] as String?,
      json[ApiJsonKey.ItemManufactureCode.key] as String?,
      json[ApiJsonKey.ItemManufacturerName.key] as String?,
      json[ApiJsonKey.ItemColorCode.key] as String?,
      json[ApiJsonKey.ItemColorName.key] as String?,
      (json[ApiJsonKey.ItemColorRgb.key] as num?)?.toInt(),
      json[ApiJsonKey.TotalMaterialInsertQty.key],
      json[ApiJsonKey.TotalMaterialLossQty.key],
      json[ApiJsonKey.TotalMaterialUseQty.key],
      json[ApiJsonKey.Workers.key] as String?,
    );

Map<String, dynamic> _$ProductionOrderSummaryToJson(
    ProductionOrderSummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.OrderId.key, instance._orderId);
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
  writeNotNull(ApiJsonKey.OrderLineId.key, instance._orderLineId);
  writeNotNull(ApiJsonKey.PlanQuantity.key, instance._planQuantity);
  writeNotNull(ApiJsonKey.Cavity.key, instance._cavity);
  writeNotNull(ApiJsonKey.EffectiveCavity.key, instance._effectiveCavity);
  writeNotNull(ApiJsonKey.ProductionQuantity.key, instance._productionQuantity);
  writeNotNull(ApiJsonKey.DefectQuantity.key, instance._defectQuantity);
  writeNotNull(ApiJsonKey.EffectiveQuantity.key, instance._effectiveQuantity);
  writeNotNull(ApiJsonKey.PutAwayQuantity.key, instance._putAwayQuantity);
  writeNotNull(ApiJsonKey.BomId.key, instance._bomId);
  writeNotNull(ApiJsonKey.LotId.key, instance._lotId);
  writeNotNull(ApiJsonKey.LotNumber.key, instance._lotNumber);
  writeNotNull(ApiJsonKey.ProductionType.key, instance._productionType);
  writeNotNull(ApiJsonKey.ItemId.key, instance._itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance._itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance._itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance._itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance._itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance._itemUnit);
  writeNotNull(ApiJsonKey.ItemTextureCode.key, instance._itemTextureCode);
  writeNotNull(ApiJsonKey.ItemTextureName.key, instance._itemTextureName);
  writeNotNull(ApiJsonKey.ItemCategoryCode.key, instance._itemCategoryCode);
  writeNotNull(ApiJsonKey.ItemCategoryName.key, instance._itemCategoryName);
  writeNotNull(ApiJsonKey.ItemModelCode.key, instance._itemModelCode);
  writeNotNull(ApiJsonKey.ItemModelName.key, instance._itemModelName);
  writeNotNull(ApiJsonKey.ItemManufactureCode.key, instance._itemManufactureCode);
  writeNotNull(ApiJsonKey.ItemManufacturerName.key, instance._itemManufacturerName);
  writeNotNull(ApiJsonKey.ItemColorCode.key, instance._itemColorCode);
  writeNotNull(ApiJsonKey.ItemColorName.key, instance._itemColorName);
  writeNotNull(ApiJsonKey.ItemColorRgb.key, instance._itemColorRgb);
  writeNotNull(ApiJsonKey.TotalMaterialInsertQty.key, instance._totalMaterialInsertQty);
  writeNotNull(ApiJsonKey.TotalMaterialLossQty.key, instance._totalMaterialLossQty);
  writeNotNull(ApiJsonKey.TotalMaterialUseQty.key, instance._totalMaterialUseQty);
  writeNotNull(ApiJsonKey.Workers.key, instance._workers);
  return val;
}

const _$ProcessTypeEnumMap = {
  ProcessType.Molding: 'Molding',
  ProcessType.Assembly: 'Assembly',
  ProcessType.Handwork: 'Handwork',
  ProcessType.Inspection: 'Inspection',
  ProcessType.Press: 'Press',
  ProcessType.Cutting: 'Cutting',
  ProcessType.Painting: 'Painting',
  ProcessType.Blending: 'Blending',
  ProcessType.Custom: 'Custom',
};

const _$PlanTypeEnumMap = {
  PlanType.Planned: 'Planned',
  PlanType.Emergency: 'Emergency',
  PlanType.Rework: 'Rework',
  PlanType.Demo: 'Demo',
};

const _$OrderStatusEnumMap = {
  OrderStatus.Ordered: 'Ordered',
  OrderStatus.Running: 'Running',
  OrderStatus.Paused: 'Paused',
  OrderStatus.Completed: 'Completed',
};
const _$ProductionTypeEnumMap = {
  ProductionType.New: 'New',
  ProductionType.Reproduction: 'Reproduction',
};