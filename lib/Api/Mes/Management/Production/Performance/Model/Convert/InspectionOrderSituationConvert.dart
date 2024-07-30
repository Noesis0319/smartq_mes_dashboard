
part of '../Dto/InspectionOrderSituation.dart';

InspectionOrderSituationDto _$InspectionOrderSituationDtoFromJson(
        Map<String, dynamic> json) =>
    InspectionOrderSituationDto(
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
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
      json[ApiJsonKey.Downtime.key] as String?,
      json[ApiJsonKey.LatestDowntimeReasonName.key] as String?,
      (json[ApiJsonKey.PostLineItems.key] as List<dynamic>?)
          ?.map((e) => InspectionOrderSituationPostLineItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json[ApiJsonKey.Workers.key] as List<dynamic>?)
          ?.map((e) => InspectionOrderSituationWorkerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InspectionOrderSituationDtoToJson(
    InspectionOrderSituationDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.OrderId.key, instance.orderId);
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
  writeNotNull(ApiJsonKey.Downtime.key, instance.downtime);
  writeNotNull(ApiJsonKey.LatestDowntimeReasonName.key, instance.latestDowntimeReasonName);
  writeNotNull(ApiJsonKey.PostLineItems.key, instance.postLineItems);
  writeNotNull(ApiJsonKey.Workers.key, instance.workers);
  return val;
}

InspectionOrderSituationWorkerDto _$WorkerFromJson(Map<String, dynamic> json) => InspectionOrderSituationWorkerDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.OrderId.key] as num?)?.toInt(),
      (json[ApiJsonKey.EmployeeId.key] as num?)?.toInt(),
      json[ApiJsonKey.EmployeeCode.key] as String?,
      json[ApiJsonKey.EmployeeName.key] as String?,
      json[ApiJsonKey.ActualStartTime.key] as String?,
      json[ApiJsonKey.ActualEndTime.key] as String?,
      json[ApiJsonKey.ActualWorkTime.key] as String?,
    );

Map<String, dynamic> _$WorkerToJson(InspectionOrderSituationWorkerDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance.id);
  writeNotNull(ApiJsonKey.OrderId.key, instance.orderId);
  writeNotNull(ApiJsonKey.EmployeeId.key, instance.employeeId);
  writeNotNull(ApiJsonKey.EmployeeCode.key, instance.employeeCode);
  writeNotNull(ApiJsonKey.EmployeeName.key, instance.employeeName);
  writeNotNull(ApiJsonKey.ActualStartTime.key, instance.actualStartTime);
  writeNotNull(ApiJsonKey.ActualEndTime.key, instance.actualEndTime);
  writeNotNull(ApiJsonKey.ActualWorkTime.key, instance.actualWorkTime);
  return val;
}

InspectionOrderSituationPostLineItemDto _$PostLineItemFromJson(Map<String, dynamic> json) =>
    InspectionOrderSituationPostLineItemDto(
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
      json[ApiJsonKey.ItemModelName.key] as String?,
      json[ApiJsonKey.ItemManufactureCode.key] as String?,
      json[ApiJsonKey.ItemManufacturerName.key] as String?,
      json[ApiJsonKey.ItemCategoryCode.key] as String?,
      json[ApiJsonKey.ItemCategoryName.key] as String?,
      json[ApiJsonKey.PlanQuantity.key],
      json[ApiJsonKey.ProductionQuantity.key],
      json[ApiJsonKey.DefectQuantity.key],
      json[ApiJsonKey.EffectiveQuantity.key],
      json[ApiJsonKey.DefectReason.key] as String?,
    );

Map<String, dynamic> _$PostLineItemToJson(InspectionOrderSituationPostLineItemDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance.id);
  writeNotNull(ApiJsonKey.OrderId.key, instance.orderId);
  writeNotNull(ApiJsonKey.LotId.key, instance.lotId);
  writeNotNull(ApiJsonKey.LotNubmer.key, instance.lotNubmer);
  writeNotNull(ApiJsonKey.ItemId.key, instance.itemId);
  writeNotNull(ApiJsonKey.ItemCode.key, instance.itemCode);
  writeNotNull(ApiJsonKey.ItemName.key, instance.itemName);
  writeNotNull(ApiJsonKey.ItemNumber.key, instance.itemNumber);
  writeNotNull(ApiJsonKey.ItemSpec.key, instance.itemSpec);
  writeNotNull(ApiJsonKey.ItemUnit.key, instance.itemUnit);
  writeNotNull(ApiJsonKey.ItemModelName.key, instance.itemModelName);
  writeNotNull(ApiJsonKey.ItemManufactureCode.key, instance.itemManufactureCode);
  writeNotNull(ApiJsonKey.ItemManufacturerName.key, instance.itemManufacturerName);
  writeNotNull(ApiJsonKey.ItemCategoryCode.key, instance.itemCategoryCode);
  writeNotNull(ApiJsonKey.ItemCategoryName.key, instance.itemCategoryName);
  writeNotNull(ApiJsonKey.PlanQuantity.key, instance.planQuantity);
  writeNotNull(ApiJsonKey.ProductionQuantity.key, instance.productionQuantity);
  writeNotNull(ApiJsonKey.DefectQuantity.key, instance.defectQuantity);
  writeNotNull(ApiJsonKey.EffectiveQuantity.key, instance.effectiveQuantity);
  writeNotNull(ApiJsonKey.DefectReason.key, instance.defectReason);
  return val;
}
