part of '../Dto/Item.dart';

ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) => ItemDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.DateTimeCreated.key] as String?,
      json[ApiJsonKey.Code.key] as String?,
      json[ApiJsonKey.Name.key] as String?,
      json[ApiJsonKey.Number.key] as String?,
      json[ApiJsonKey.Spec.key] as String?,
      json[ApiJsonKey.Unit.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      (json[ApiJsonKey.CategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.CategoryCode.key] as String?,
      json[ApiJsonKey.CategoryName.key] as String?,
      (json[ApiJsonKey.GroupId.key] as num?)?.toInt(),
      json[ApiJsonKey.GroupCode.key] as String?,
      json[ApiJsonKey.GroupName.key] as String?,
      (json[ApiJsonKey.MajorGroupId.key] as num?)?.toInt(),
      json[ApiJsonKey.MajorGroupCode.key] as String?,
      json[ApiJsonKey.MajorGroupName.key] as String?,
      (json[ApiJsonKey.ModelId.key] as num?)?.toInt(),
      json[ApiJsonKey.ModelCode.key] as String?,
      json[ApiJsonKey.ModelName.key] as String?,
      (json[ApiJsonKey.ColorId.key] as num?)?.toInt(),
      json[ApiJsonKey.ColorCode.key] as String?,
      json[ApiJsonKey.ColorName.key] as String?,
      (json[ApiJsonKey.ColorRgb.key] as num?)?.toInt(),
      (json[ApiJsonKey.ManufacturerId.key] as num?)?.toInt(),
      json[ApiJsonKey.ManufacturerCode.key] as String?,
      json[ApiJsonKey.ManufacturerName.key] as String?,
      (json[ApiJsonKey.TextureId.key] as num?)?.toInt(),
      json[ApiJsonKey.TextureCode.key] as String?,
      json[ApiJsonKey.TextureName.key] as String?,
      (json[ApiJsonKey.InventorySafeQty.key] as num?)?.toInt(),
      json[ApiJsonKey.InventoryRetentionPeriod.key] as String?,
      $enumDecodeNullable(_$InventoryManageTypeEnumMap, json[ApiJsonKey.InventoryManageType.key]),
      json[ApiJsonKey.UseMoldingProcess.key] as bool?,
      json[ApiJsonKey.UseAssemblyProcess.key] as bool?,
      json[ApiJsonKey.UseHandworkProcess.key] as bool?,
      json[ApiJsonKey.UsePressProcess.key] as bool?,
      json[ApiJsonKey.UseCuttingProcess.key] as bool?,
      json[ApiJsonKey.UseInspectionProcess.key] as bool?,
      json[ApiJsonKey.UsePaintingProcess.key] as bool?,
      json[ApiJsonKey.UseBlendingProcess.key] as bool?,
      json[ApiJsonKey.UseCustomProcess.key] as bool?,
      json[ApiJsonKey.UsePurchaseSupply.key] as bool?,
      json[ApiJsonKey.UseProductionSupply.key] as bool?,
      json[ApiJsonKey.UseSubcontractSupply.key] as bool?,
      json[ApiJsonKey.UseClosing.key] as bool?,
      (json[ApiJsonKey.SizeInfo.key] as List<dynamic>?)
          ?.map((e) => ItemSizeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      json[ApiJsonKey.LossRate.key],
      json[ApiJsonKey.SalesPeriod.key] as String?,
      json[ApiJsonKey.ProductionPeriod.key] as String?,
      json[ApiJsonKey.PurchasePeriod.key] as String?,
      json[ApiJsonKey.ProductionPeriodQuantity.key],
    );

Map<String, dynamic> _$ItemDtoToJson(ItemDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.DateTimeCreated.key, instance._dateTimeCreated);
  writeNotNull(ApiJsonKey.Code.key, instance._code);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(ApiJsonKey.Number.key, instance._number);
  writeNotNull(ApiJsonKey.Spec.key, instance._spec);
  writeNotNull(ApiJsonKey.Unit.key, instance._unit);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.CategoryId.key, instance._categoryId);
  writeNotNull(ApiJsonKey.CategoryCode.key, instance._categoryCode);
  writeNotNull(ApiJsonKey.CategoryName.key, instance._categoryName);
  writeNotNull(ApiJsonKey.GroupId.key, instance._groupId);
  writeNotNull(ApiJsonKey.GroupCode.key, instance._groupCode);
  writeNotNull(ApiJsonKey.GroupName.key, instance._groupName);
  writeNotNull(ApiJsonKey.MajorGroupId.key, instance._majorGroupId);
  writeNotNull(ApiJsonKey.MajorGroupCode.key, instance._majorGroupCode);
  writeNotNull(ApiJsonKey.MajorGroupName.key, instance._majorGroupName);
  writeNotNull(ApiJsonKey.ModelId.key, instance._modelId);
  writeNotNull(ApiJsonKey.ModelCode.key, instance._modelCode);
  writeNotNull(ApiJsonKey.ModelName.key, instance._modelName);
  writeNotNull(ApiJsonKey.ColorId.key, instance._colorId);
  writeNotNull(ApiJsonKey.ColorCode.key, instance._colorCode);
  writeNotNull(ApiJsonKey.ColorName.key, instance._colorName);
  writeNotNull(ApiJsonKey.ColorRgb.key, instance._colorRgb);
  writeNotNull(ApiJsonKey.ManufacturerId.key, instance._manufacturerId);
  writeNotNull(ApiJsonKey.ManufacturerCode.key, instance._manufacturerCode);
  writeNotNull(ApiJsonKey.ManufacturerName.key, instance._manufacturerName);
  writeNotNull(ApiJsonKey.TextureId.key, instance._textureId);
  writeNotNull(ApiJsonKey.TextureCode.key, instance._textureCode);
  writeNotNull(ApiJsonKey.TextureName.key, instance._textureName);
  writeNotNull(ApiJsonKey.InventorySafeQty.key, instance._inventorySafeQty);
  writeNotNull(ApiJsonKey.InventoryRetentionPeriod.key, instance._inventoryRetentionPeriod);
  writeNotNull(ApiJsonKey.InventoryManageType.key, instance._inventoryManageType);
  writeNotNull(ApiJsonKey.UseMoldingProcess.key, instance._useMoldingProcess);
  writeNotNull(ApiJsonKey.UseAssemblyProcess.key, instance._useAssemblyProcess);
  writeNotNull(ApiJsonKey.UseHandworkProcess.key, instance._useHandworkProcess);
  writeNotNull(ApiJsonKey.UsePressProcess.key, instance._usePressProcess);
  writeNotNull(ApiJsonKey.UseCuttingProcess.key, instance._useCuttingProcess);
  writeNotNull(ApiJsonKey.UseInspectionProcess.key, instance._useInspectionProcess);
  writeNotNull(ApiJsonKey.UsePaintingProcess.key, instance._usePaintingProcess);
  writeNotNull(ApiJsonKey.UseBlendingProcess.key, instance._useBlendingProcess);
  writeNotNull(ApiJsonKey.UseCustomProcess.key, instance._useCustomProcess);
  writeNotNull(ApiJsonKey.UsePurchaseSupply.key, instance._usePurchaseSupply);
  writeNotNull(ApiJsonKey.UseProductionSupply.key, instance._useProductionSupply);
  writeNotNull(ApiJsonKey.UseSubcontractSupply.key, instance._useSubcontractSupply);
  writeNotNull(ApiJsonKey.UseClosing.key, instance._useClosing);
  writeNotNull(ApiJsonKey.SizeInfo.key, instance._sizeInfo);
  writeNotNull(ApiJsonKey.LossRate.key, instance._lossRate);
  writeNotNull(ApiJsonKey.SalesPeriod.key, instance._salesPeriod);
  writeNotNull(ApiJsonKey.ProductionPeriod.key, instance._productionPeriod);
  writeNotNull(ApiJsonKey.PurchasePeriod.key, instance._purchasePeriod);
  writeNotNull(ApiJsonKey.ProductionPeriodQuantity.key, instance._productionPeriodQuantity);
  return val;
}

const _$InventoryManageTypeEnumMap = {
  InventoryManageType.LabelOriented: 'LabelOriented',
  InventoryManageType.Automatic: 'Automatic',
};
