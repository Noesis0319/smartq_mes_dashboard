
part of '../Dto/ProcessTypeOptions.dart';

ProcessTypeOptionsDto _$ProcessTypeOptionsDtoFromJson(
        Map<String, dynamic> json) =>
    ProcessTypeOptionsDto(
      json[ApiJsonKey.UseMolding.key] as bool?,
      json[ApiJsonKey.UsePress.key] as bool?,
      json[ApiJsonKey.UseCutting.key] as bool?,
      json[ApiJsonKey.UseAssembly.key] as bool?,
      json[ApiJsonKey.UseHandwork.key] as bool?,
      json[ApiJsonKey.UseInspection.key] as bool?,
      json[ApiJsonKey.UsePainting.key] as bool?,
      json[ApiJsonKey.UseBlending.key] as bool?,
      json[ApiJsonKey.UseCustom.key] as bool?,
    );

Map<String, dynamic> _$ProcessTypeOptionsDtoToJson(
    ProcessTypeOptionsDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.UseMolding.key, instance._useMolding);
  writeNotNull(ApiJsonKey.UsePress.key, instance._usePress);
  writeNotNull(ApiJsonKey.UseCutting.key, instance._useCutting);
  writeNotNull(ApiJsonKey.UseAssembly.key, instance._useAssembly);
  writeNotNull(ApiJsonKey.UseHandwork.key, instance._useHandwork);
  writeNotNull(ApiJsonKey.UseInspection.key, instance._useInspection);
  writeNotNull(ApiJsonKey.UsePainting.key, instance._usePainting);
  writeNotNull(ApiJsonKey.UseBlending.key, instance._useBlending);
  writeNotNull(ApiJsonKey.UseCustom.key, instance._useCustom);
  return val;
}
