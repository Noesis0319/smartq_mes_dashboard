

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ResponseCodeConvert.dart';

/// <summary>
/// 생산호출 응답 코드 dto
/// </summary>

class ResponseCodeDto {
  /// <summary>
  /// Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 라인 Id
  /// </summary>
  int? _lineId;

  /// <summary>
  /// 라인 코드
  /// </summary>
  String? _lineCode;

  /// <summary>
  /// 라인명
  /// </summary>
  String? _lineName;

  /// <summary>
  /// 조치방법
  /// </summary>
  String? _method;

  /// <summary>
  /// 조치유형
  /// </summary>
  String? _type;

  /// <summary>
  /// 정렬 순서
  /// </summary>
  int? _orderIndex;

  ResponseCodeDto(this._id, this._lineId, this._lineCode, this._lineName,
      this._method, this._type, this._orderIndex);

  int? get orderIndex => _orderIndex;

  String? get type => _type;

  String? get method => _method;

  String? get lineName => _lineName;

  String? get lineCode => _lineCode;

  int? get lineId => _lineId;

  int get id => _id!;

  factory ResponseCodeDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseCodeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseCodeDtoToJson(this);
}
