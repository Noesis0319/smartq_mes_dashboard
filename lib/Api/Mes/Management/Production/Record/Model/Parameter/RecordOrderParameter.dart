

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/RecordOrderParameterConvert.dart';

class RecordsOrderParameter{
  List<int>? _orderList;

  RecordsOrderParameter(this._orderList);

  List<int>? get orderList => _orderList;

  factory RecordsOrderParameter.fromJson(Map<String, dynamic> json) =>
      _$RecordsOrderParameterFromJson(json);
  Map<String, dynamic> toJson()=>_$RecordsOrderParameterToJson(this);
}