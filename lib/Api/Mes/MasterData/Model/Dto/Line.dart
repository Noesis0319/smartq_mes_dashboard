

import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/LineConvert.dart';
class LineDto {
  int? _id;

  /// <summary>
  /// 라인코드
  /// </summary>
  String? _code;

  /// <summary>
  /// 라인명
  /// </summary>
  String? _name;

  /// <summary>
  /// 라인번호
  /// </summary>
  int? _number;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 공장Id
  /// </summary>
  int? _factoryId;

  /// <summary>
  /// 공장코드
  /// </summary>
  String? _factoryCode;

  /// <summary>
  /// 공장이름
  /// </summary>
  String? _factoryName;

  LineDto(this._id, this._code, this._name, this._number, this._memo, this._factoryId, this._factoryCode,
      this._factoryName);

  String get factoryName => _factoryName?? "";

  String get factoryCode => _factoryCode?? "";

  int get factoryId => _factoryId!;

  String get memo => _memo?? "";

  int? get number => _number;

  String get name => _name?? "";

  String get code => _code?? "";

  int get id => _id!;


  factory LineDto.fromJson(Map<String, dynamic> json) =>
      _$LineDtoFromJson(json);
  Map<String, dynamic> toJson()=>_$LineDtoToJson(this);
}
