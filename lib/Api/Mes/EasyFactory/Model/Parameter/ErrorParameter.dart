

import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ErrorParameterConvert.dart';

class ErrorParameter {
  /// <summary>
  /// 에러가 발생한 설비번호
  /// </summary>
  final int? _machineNumber;

  /// <summary>
  /// 필드명
  /// </summary>
  final String? _fieldName;

  /// <summary>
  /// 에러 내용
  /// </summary>
  final String? _message;

  /// <summary>
  /// 발생 시각
  /// </summary>
  final String? _occurred;

  /// <summary>
  /// 현재값
  /// </summary>
  final int? _pV;

  /// <summary>
  /// 설정값
  /// </summary>
  final int? _sV;

  /// <summary>
  /// 상한값
  /// </summary>
  final int? _uB;

  /// <summary>
  /// 하한값
  /// </summary>
  final int? _lB;

  /// <summary>
  /// 원본 데이터
  /// </summary>
  final String? _rawData;

  ErrorParameter(this._machineNumber, this._fieldName, this._message, this._occurred, this._pV, this._sV, this._uB,
      this._lB, this._rawData);

  String? get rawData => _rawData;

  int? get lB => _lB;

  int? get uB => _uB;

  int? get sV => _sV;

  int? get pV => _pV;

  String? get occurred => _occurred;

  String? get message => _message;

  String? get fieldName => _fieldName;

  int? get machineNumber => _machineNumber;

  // factory ErrorParameter.fromJson(Map<String, dynamic> json) =>
  //     _errorParameterFromJson(json);
  Map<String, dynamic> toJson()=>_errorParameterToJson(this);
}
