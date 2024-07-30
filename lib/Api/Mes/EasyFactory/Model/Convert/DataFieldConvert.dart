part of '../Dto/DataField.dart';

DataFieldDto _$DataFieldDtoFromJson(Map<String, dynamic> json) => DataFieldDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.CollectionGroupId.key] as num?)?.toInt(),
      $enumDecodeNullable(_$FieldTypeEnumMap, json[ApiJsonKey.Type.key]),
      json[ApiJsonKey.Name.key] as String?,
      json[ApiJsonKey.Caption.key] as String?,
      json[ApiJsonKey.Unit.key] as String?,
      json[ApiJsonKey.IsWritable.key] as bool,
    );

Map<String, dynamic> _$DataFieldDtoToJson(DataFieldDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.CollectionGroupId.key, instance._collectionGroupId);
  writeNotNull(ApiJsonKey.Type.key, instance._type);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(ApiJsonKey.Caption.key, instance._caption);
  writeNotNull(ApiJsonKey.Unit.key, instance._unit);
  val[ApiJsonKey.IsWritable.key] = instance._isWritable;
  return val;
}

const _$FieldTypeEnumMap = {
  FieldType.MS:'MS',
  FieldType.Count:'Count',
  FieldType.MT:'MT',
  FieldType.XN:'XN',
  FieldType.YD:'YD',
  FieldType.HOT3:'HOT3',
  FieldType.ZigBeeCount:'ZigBeeCount',
};
