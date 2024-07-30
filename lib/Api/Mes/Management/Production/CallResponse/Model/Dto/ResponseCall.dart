import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../../Util/Convert/ConvertHelper.dart';
import '../../../../../../../Util/Convert/ConvertType.dart';
import '../../../../../../../Util/Convert/Type/ConvertDataType.dart';
import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../../MasterData/Model/Type/CallSeverity.dart';

part '../Convert/ResponseCallConvert.dart';

/// <summary>
/// 호출응답 내역 dto
/// </summary>

class CallResponseDto {
  /// <summary>
  /// 호출응답 내역 Id
  /// </summary>

  dynamic _id;

  /// <summary>
  /// 라인Id
  /// </summary>
  dynamic _lineId;

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
  dynamic _machineId;

  /// <summary>
  /// 설비코드
  /// </summary>
  String? _machineCode;

  /// <summary>
  /// 설비명
  /// </summary>
  String? _machineName;

  /// <summary>
  /// 담당자Id
  /// </summary>
  dynamic _managerId;

  /// <summary>
  /// 담당자코드
  /// </summary>
  String? _managerCode;

  /// <summary>
  /// 담당자명
  /// </summary>
  String? _managerName;

  /// <summary>
  /// 호출일시 (=call response 생성일시)
  /// </summary>
  String? _dateTimeCreated;

  /// <summary>
  /// 조치일시
  /// </summary>
  String? _responseTime;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 호출원인 Id
  /// </summary>
  dynamic _callCodeId;

  /// <summary>
  /// 호출 원인
  /// </summary>
  String? _callReason;

  /// <summary>
  /// 호출유형
  /// </summary>
  String? _callType;

  /// <summary>
  /// 호출심각단계
  /// </summary>
  CallSeverity? _callSeverity;

  /// <summary>
  /// 호출 응답(조치) Id
  /// </summary>
  dynamic _responseCodeId;

  /// <summary>
  /// 호출 응답(조치) 방식
  /// </summary>
  String? _responseMethod;

  /// <summary>
  /// 호출응답(조치) 유형
  /// </summary>
  String? _responseType;


  CallResponseDto(
      this._id,
      this._lineId,
      this._lineCode,
      this._lineName,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._managerId,
      this._managerCode,
      this._managerName,
      this._dateTimeCreated,
      this._responseTime,
      this._memo,
      this._callCodeId,
      this._callReason,
      this._callType,
      this._callSeverity,
      this._responseCodeId,
      this._responseMethod,
      this._responseType);




  dynamic get id => TypeConvertHelper.dynamicToInt(_id);

  dynamic get lineId => TypeConvertHelper.dynamicToInt(_lineId);

  String get lineCode => _lineCode?? "";

  String get lineName => _lineName?? "";

  dynamic get machineId => TypeConvertHelper.dynamicToInt(_machineId);

  String get machineCode => _machineCode?? "";

  String get machineName => _machineName?? "";

  dynamic get managerId => TypeConvertHelper.dynamicToInt(_managerId);

  String get managerCode => _managerCode?? "";

  String get managerName => _managerName?? "";

  String get dateTimeCreated => _dateTimeCreated?? "";

  String get responseTime => _responseTime?? "";

  String get memo => _memo?? "";

  dynamic get callCodeId => TypeConvertHelper.dynamicToInt(_callCodeId);

  String get callReason => _callReason?? "";

  String get callType => _callType?? "";

  CallSeverity? get callSeverity => _callSeverity;

  dynamic get responseCodeId => TypeConvertHelper.dynamicToInt(_responseCodeId);

  String get responseMethod => _responseMethod?? "";

  String get responseType => _responseType?? "";

  bool get isCallSevere => _callSeverity == "High";

  bool get  isRespond => _responseTime != null;

  get createdDateYmd => DateConvertHelper.extractDateString(dateTimeCreated, DateConvertType.YMd);

  get createdDateHm => DateConvertHelper.extractDateString(dateTimeCreated, DateConvertType.Hm);

  get elapsedTime => DateConvertHelper.elapsedTime(_dateTimeCreated);

  get createdTimeToSimple => _dateTimeCreated == null
      ? ""
      : DateFormat('MM-dd')
      .format(DateConvertHelper.revertDateStringToDateTime( _dateTimeCreated!));

  get responseTimeToSimple => _responseTime == null
      ? ""
      : DateFormat('MM-dd')
      .format(DateConvertHelper.revertDateStringToDateTime( _responseTime!));

  set responseTime(String value) {
    _responseTime = value;
  }

  factory CallResponseDto.fromJson(Map<String, dynamic> json) => _$CallResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CallResponseDtoToJson(this);
}
