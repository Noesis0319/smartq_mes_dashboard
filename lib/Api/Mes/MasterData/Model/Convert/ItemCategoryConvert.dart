
part of '../Dto/ItemCategory.dart';

ItemCategoryDto _$ItemCategoryDtoFromJson(Map<String, dynamic> json) =>
    ItemCategoryDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.Code.key] as String?,
      json[ApiJsonKey.Name.key] as String?,
    );

Map<String, dynamic> _$ItemCategoryDtoToJson(ItemCategoryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.Code.key, instance._code);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  return val;
}
