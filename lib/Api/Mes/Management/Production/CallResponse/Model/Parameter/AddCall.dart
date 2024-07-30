

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/AddCallConvert.dart';

class AddCallParameter{
  /// <summary>
  /// 설비ID
  /// </summary>
  int? _machineId;

  /// <summary>
  /// 호출원인Id
  /// </summary>
  int? _callCodeId;

  /// <summary>
  /// 호출 대상 담당자 목록
  /// </summary>
  List<int>? _managerIds;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;


  AddCallParameter(this._machineId, this._callCodeId, this._managerIds, this._memo);

  String get memo => _memo?? "";

  List<int> get managerIds => _managerIds!;

  int get callCodeId => _callCodeId!;

  int get machineId => _machineId!;

  factory AddCallParameter.fromJson(Map<String, dynamic> json) =>
      _$AddCallParameterFromJson(json);
  Map<String, dynamic> toJson()=>_$AddCallParameterToJson(this);
}