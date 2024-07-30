
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../../MasterData/Model/Type/CallSeverity.dart';

part '../Convert/CallCodeConvert.dart';

/// <summary>
/// 생산 호출 원인
/// </summary>
class CallCodeDto {
  /// <summary>
  /// Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 라인 Id
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
  /// 호출원인
  /// </summary>
  String? _reason;

  /// <summary>
  /// 호출 유형
  /// </summary>
  String? _type;

  /// <summary>
  /// 심각도
  /// </summary>
  CallSeverity? _severity;

  /// <summary>
  /// 정렬순번
  /// </summary>
  int? _orderIndex;

  CallCodeDto(this._id, this._lineId, this._lineCode, this._lineName, this._reason,
      this._type, this._severity, this._orderIndex);

  int? get orderIndex => _orderIndex;

  CallSeverity? get severity => _severity;

  String? get type => _type;

  String? get reason => _reason;

  String? get lineName => _lineName;

  String? get lineCode => _lineCode;

  int get lineId => _lineId!;

  int get id => _id!;

  factory CallCodeDto.fromJson(Map<String, dynamic> json) =>
      _$CallCodeDtoFromJson(json);
  Map<String, dynamic> toJson()=>_$CallCodeDtoToJson(this);
}
