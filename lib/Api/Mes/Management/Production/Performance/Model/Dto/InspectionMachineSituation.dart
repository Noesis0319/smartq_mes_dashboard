

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/InspectionMachineSituationConvert.dart';

class InspectionMachineSituationDto {
  /// <summary>
  /// 설비ID
  /// </summary>
  int? _id;

  /// <summary>
  /// 설비코드
  /// </summary>
  String? _code;

  /// <summary>
  /// 설비명
  /// </summary>
  String? _name;

  /// <summary>
  /// 설비정렬번호
  /// </summary>
  int? _orderIndex;

  /// <summary>
  /// 라인ID
  /// </summary>
  int? _lineId;

  /// <summary>
  /// 근무명
  /// </summary>
  String? _shiftName;

  /// <summary>
  /// 가동상태
  /// </summary>
  String? _runningStatus;

  /// <summary>
  /// 달성률 평균
  /// </summary>
  dynamic _completionRateAverage;

  InspectionMachineSituationDto(this._id, this._code, this._name, this._orderIndex, this._lineId, this._shiftName,
      this._runningStatus, this._completionRateAverage);

    factory InspectionMachineSituationDto.fromJson(Map<String, dynamic> json)
    => _$InspectionMachineSituationDtoFromJson(json);
    Map<String, dynamic> toJson() => _$InspectionMachineSituationDtoToJson(this);

  dynamic get completionRateAverage => _completionRateAverage;

  String? get runningStatus => _runningStatus;

  String? get shiftName => _shiftName;

  int? get lineId => _lineId;

  int? get orderIndex => _orderIndex;

  String? get name => _name;

  String? get code => _code;

  int? get id => _id;
}

