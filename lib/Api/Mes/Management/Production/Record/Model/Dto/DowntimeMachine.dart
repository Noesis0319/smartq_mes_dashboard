
import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/DowntimeMachineConvert.dart';

class DowntimeMachineDto {
  /// <summary>
  /// 비가동설비 Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 비가동기록 Id
  /// </summary>
  int? _recordId;

  /// <summary>
  /// 라인Id
  /// </summary>
  int? _lineId;

  /// <summary>
  /// 라인코드
  /// </summary>
  String? _lineCode;

  /// <summary>
  /// 라인명
  /// </summary>
  String? _lineName;

  /// <summary>
  /// 설비Id
  /// </summary>
  int? _machineId;

  /// <summary>
  /// 설비코드
  /// </summary>
  String? _machineCode;

  /// <summary>
  /// 설비명
  /// </summary>
  String? _machineName;

  DowntimeMachineDto(this._id, this._recordId, this._lineId, this._lineCode, this._lineName, this._machineId,
      this._machineCode, this._machineName);

  factory DowntimeMachineDto.fromJson(Map<String, dynamic> json) => _$DowntimeMachineDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DowntimeMachineDtoToJson(this);

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  String? get lineName => _lineName;

  String? get lineCode => _lineCode;

  int? get lineId => _lineId;

  int? get recordId => _recordId;

  int? get id => _id;
}
