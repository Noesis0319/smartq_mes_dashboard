
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../../MasterData/Model/Type/InspectionSuperCategory.dart';
import '../../../../../MasterData/Model/Type/InspectionType.dart';
import '../Type/InspectionLocation.dart';
import '../Type/InspectionMethod.dart';
import '../Type/InspectionQuantityType.dart';

part '../Convert/InspectionWorkHeaderConvert.dart';

class InspectionWorkHeaderDto {
  /// <summary>
  /// 검사작업ID
  /// </summary>
  int? _id;

  /// <summary>
  /// 공장ID
  /// </summary>
  int? _factoryId;

  /// <summary>
  /// 검사번호
  /// </summary>
  String? _inspectionWorkNumber;

  /// <summary>
  /// 검사일자
  /// </summary>
  String? _inspectionDate;

  /// <summary>
  /// 검사대분류
  /// </summary>
  InspectionSuperCategory? _superCategory;

  /// <summary>
  /// 검사유형
  /// </summary>
  InspectionType? _inspectionType;

  /// <summary>
  /// 검사방법
  /// </summary>
  InspectionMethod? _inspectionMethod;

  /// <summary>
  /// 수량구분
  /// </summary>
  InspectionQuantityType? _quantityType;

  /// <summary>
  /// 검사위치
  /// </summary>
  InspectionLocation? _inspectionLocation;

  /// <summary>
  /// 검사 시작시간
  /// </summary>
  String? _startTime;

  /// <summary>
  /// 검사 종료시간
  /// </summary>
  String? _endTime;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 합격여부
  /// 검사결과 중 하나의 불합격이라도 존재하는 경우 불합격
  /// </summary>
  bool? _isPassed;

  /// <summary>
  /// 측정결과 개수
  /// </summary>
  int? _resultCount;

  /// <summary>
  /// 합격 횟수
  /// </summary>
  int? _passCount;

  /// <summary>
  /// 불합격 횟수
  /// </summary>
  int? _failCount;

  /// <summary>
  /// 다음 측정결과순번
  /// </summary>
  int? _nextInspectionNumber;

  /// <summary>
  /// 품목Id
  /// </summary>
  int? _itemId;

  /// <summary>
  /// 품목코드
  /// </summary>
  String? _itemCode;

  /// <summary>
  /// 품목이름
  /// </summary>
  String? _itemName;

  /// <summary>
  /// 품목번호
  /// </summary>
  String? _itemNumber;

  /// <summary>
  /// 품목규격
  /// </summary>
  String? _itemSpec;

  /// <summary>
  /// 품목단위
  /// </summary>
  String? _itemUnit;

  /// <summary>
  /// 담당자ID
  /// </summary>
  int? _managerId;

  /// <summary>
  /// 담당자코드
  /// </summary>
  String? _managerCode;

  /// <summary>
  /// 담당자이름
  /// </summary>
  String? _managerName;

  /// <summary>
  /// 설비ID
  /// </summary>
  int? _machineId;

  /// <summary>
  /// 설비코드
  /// </summary>
  String? _machineCode;

  /// <summary>
  /// 설비이름
  /// </summary>
  String? _machineName;

  /// <summary>
  /// 근무ID
  /// </summary>
  int? _shiftId;

  /// <summary>
  /// 근무코드
  /// </summary>
  String? _shiftCode;

  /// <summary>
  /// 근무이름
  /// </summary>
  String? _shiftName;

  InspectionWorkHeaderDto(
      this._id,
      this._factoryId,
      this._inspectionWorkNumber,
      this._inspectionDate,
      this._superCategory,
      this._inspectionType,
      this._inspectionMethod,
      this._quantityType,
      this._inspectionLocation,
      this._startTime,
      this._endTime,
      this._memo,
      this._isPassed,
      this._resultCount,
      this._passCount,
      this._failCount,
      this._nextInspectionNumber,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit,
      this._managerId,
      this._managerCode,
      this._managerName,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._shiftId,
      this._shiftCode,
      this._shiftName);

  factory InspectionWorkHeaderDto.fromJson(Map<String, dynamic> json) => _$InspectionWorkHeaderDtoFromJson(json);

  Map<String, dynamic> toJson() => _$InspectionWorkHeaderDtoToJson(this);

  String? get shiftName => _shiftName;

  String? get shiftCode => _shiftCode;

  int? get shiftId => _shiftId;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  String? get managerName => _managerName;

  String? get managerCode => _managerCode;

  int? get managerId => _managerId;

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  int? get nextInspectionNumber => _nextInspectionNumber;

  int? get failCount => _failCount;

  int? get passCount => _passCount;

  int? get resultCount => _resultCount;

  bool? get isPassed => _isPassed;

  String? get memo => _memo;

  String? get endTime => _endTime;

  String? get startTime => _startTime;

  InspectionLocation? get inspectionLocation => _inspectionLocation;

  InspectionQuantityType? get quantityType => _quantityType;

  InspectionMethod? get inspectionMethod => _inspectionMethod;

  InspectionType? get inspectionType => _inspectionType;

  InspectionSuperCategory? get superCategory => _superCategory;

  String? get inspectionDate => _inspectionDate;

  String? get inspectionWorkNumber => _inspectionWorkNumber;

  int? get factoryId => _factoryId;

  int? get id => _id;
}
