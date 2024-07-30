
import 'dart:convert';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ProductionCallConvert.dart';

class ProductionCallDto {
  dynamic _machineId;
  dynamic _lineId;
  dynamic _callId;
  String? _callReasonName;
  String? _lineCode;
  List<int>? _targetManagers;
  String? _lineName;
  String? _callReasonCode;
  String? _machineName;
  String? _machineCode;
  dynamic _callReasonId;
  String? _memo;
  String? _occurred;
  dynamic _companyCode;

  ProductionCallDto(
      this._machineId,
      this._lineId,
      this._callId,
      this._callReasonName,
      this._lineCode,
      this._targetManagers,
      this._lineName,
      this._callReasonCode,
      this._machineName,
      this._machineCode,
      this._callReasonId,
      this._memo,
      this._occurred,
      this._companyCode);

  dynamic get machineId => _machineId;

  dynamic get lineId => _lineId;

  dynamic get callId => _callId;

  String? get callReasonName => _callReasonName;

  String? get lineCode => _lineCode;

  List<int>? get targetManagers => _targetManagers;

  String? get lineName => _lineName;

  String? get callReasonCode => _callReasonCode;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  dynamic get callReasonId => _callReasonId;

  String? get memo => _memo;

  String? get occurred => _occurred;

  dynamic get companyCode => _companyCode;

  factory ProductionCallDto.fromJson(Map<String, dynamic> json) => _$ProductionCallDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCallDtoToJson(this);
}
