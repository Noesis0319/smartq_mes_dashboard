part of '../Parameter/RecordOrderParameter.dart';

RecordsOrderParameter _$RecordsOrderParameterFromJson(Map<String, dynamic> json) => RecordsOrderParameter(
  (json[ApiJsonKey.OrderList.key] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$RecordsOrderParameterToJson(RecordsOrderParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.OrderList.key, instance._orderList);
  return val;
}