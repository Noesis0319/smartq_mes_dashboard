part of '../Dto/Machine.dart';

MachineDto _$MachineDtoFromJson(Map<String, dynamic> json) => MachineDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.Code.key] as String?,
      json[ApiJsonKey.Name.key] as String?,
      (json[ApiJsonKey.Number.key] as num?)?.toInt(),
      $enumDecodeNullable(_$ProcessTypeEnumMap, json[ApiJsonKey.ProcessType.key]),
      json[ApiJsonKey.Memo.key] as String?,
      (json[ApiJsonKey.OrderNumber.key] as num?)?.toInt(),
      json[ApiJsonKey.Maker.key] as String?,
      json[ApiJsonKey.ModelName.key] as String?,
      json[ApiJsonKey.ModelNumber.key] as String?,
      json[ApiJsonKey.DateManufactured.key] == null
          ? null
          : DateTime.parse(json[ApiJsonKey.DateManufactured.key] as String),
      json[ApiJsonKey.DateBought.key] == null ? null : DateTime.parse(json[ApiJsonKey.DateBought.key] as String),
      (json[ApiJsonKey.FactoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.FactoryCode.key] as String?,
      json[ApiJsonKey.FactoryName.key] as String?,
      (json[ApiJsonKey.LineId.key] as num?)?.toInt(),
      json[ApiJsonKey.LineCode.key] as String?,
      json[ApiJsonKey.LineName.key] as String?,
      (json[ApiJsonKey.LineNumber.key] as num?)?.toInt(),
      (json[ApiJsonKey.LocationId.key] as num?)?.toInt(),
      json[ApiJsonKey.LocationCode.key] as String?,
      json[ApiJsonKey.LocationName.key] as String?,
      (json[ApiJsonKey.CategoryId.key] as num?)?.toInt(),
      json[ApiJsonKey.CategoryName.key] as String?,
      json[ApiJsonKey.SpecType.key] as String?,
    );

Map<String, dynamic> _$MachineDtoToJson(MachineDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.Code.key, instance._code);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(ApiJsonKey.Number.key, instance._number);
  writeNotNull(ApiJsonKey.ProcessType.key, instance._processType);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.OrderNumber.key, instance._orderNumber);
  writeNotNull(ApiJsonKey.Maker.key, instance._maker);
  writeNotNull(ApiJsonKey.ModelName.key, instance._modelName);
  writeNotNull(ApiJsonKey.ModelNumber.key, instance._modelNumber);
  writeNotNull(ApiJsonKey.DateManufactured.key, instance._dateManufactured?.toIso8601String());
  writeNotNull(ApiJsonKey.DateBought.key, instance._dateBought?.toIso8601String());
  writeNotNull(ApiJsonKey.FactoryId.key, instance._factoryId);
  writeNotNull(ApiJsonKey.FactoryCode.key, instance._factoryCode);
  writeNotNull(ApiJsonKey.FactoryName.key, instance._factoryName);
  writeNotNull(ApiJsonKey.LineId.key, instance._lineId);
  writeNotNull(ApiJsonKey.LineCode.key, instance._lineCode);
  writeNotNull(ApiJsonKey.LineName.key, instance._lineName);
  writeNotNull(ApiJsonKey.LineNumber.key, instance._lineNumber);
  writeNotNull(ApiJsonKey.LocationId.key, instance._locationId);
  writeNotNull(ApiJsonKey.LocationCode.key, instance._locationCode);
  writeNotNull(ApiJsonKey.LocationName.key, instance._locationName);
  writeNotNull(ApiJsonKey.CategoryId.key, instance._categoryId);
  writeNotNull(ApiJsonKey.CategoryName.key, instance._categoryName);
  writeNotNull(ApiJsonKey.SpecType.key, instance._specType);
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
