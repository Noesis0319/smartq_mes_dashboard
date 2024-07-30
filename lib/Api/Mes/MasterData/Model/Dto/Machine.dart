


import 'package:json_annotation/json_annotation.dart';

import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../Type/ProcessType.dart';

part '../Convert/MachineConvert.dart';

class MachineDto {
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
  /// 설비번호
  /// </summary>
  int? _number;

  /// <summary>
  /// 공정구분
  /// </summary>
  ProcessType? _processType;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 정렬 번호
  /// </summary>
  int? _orderNumber;

  /// <summary>
  /// 제조사
  /// </summary>
  String? _maker;

  /// <summary>
  /// 모델명
  /// </summary>
  String? _modelName;

  /// <summary>
  /// 모델번호
  /// </summary>
  String? _modelNumber;

  /// <summary>
  /// 제조일자
  /// </summary>
  DateTime? _dateManufactured;

  /// <summary>
  /// 구매일자
  /// </summary>
  DateTime? _dateBought;

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

  int? _lineId;

  String? _lineCode;

  String? _lineName;

  int? _lineNumber;

  /// <summary>
  /// 금형위치
  /// </summary>
  int? _locationId;

  /// <summary>
  /// 위치코드
  /// </summary>
  String? _locationCode;

  /// <summary>
  /// 위치명
  /// </summary>
  String? _locationName;

  /// <summary>
  /// 설비 분류Id
  /// </summary>
  int? _categoryId;

  /// <summary>
  /// 설비 분류명
  /// </summary>
  String? _categoryName;

  /// <summary>
  /// 설비 보전 유형
  /// </summary>
  String? _specType;


  MachineDto(
      this._id,
      this._code,
      this._name,
      this._number,
      this._processType,
      this._memo,
      this._orderNumber,
      this._maker,
      this._modelName,
      this._modelNumber,
      this._dateManufactured,
      this._dateBought,
      this._factoryId,
      this._factoryCode,
      this._factoryName,
      this._lineId,
      this._lineCode,
      this._lineName,
      this._lineNumber,
      this._locationId,
      this._locationCode,
      this._locationName,
      this._categoryId,
      this._categoryName,
      this._specType);

  String? get specType => _specType;

  String? get categoryName => _categoryName;

  int? get categoryId => _categoryId;

  String? get locationName => _locationName;

  String? get locationCode => _locationCode;

  int? get locationId => _locationId;

  int? get lineNumber => _lineNumber;

  String? get lineName => _lineName;

  String? get lineCode => _lineCode;

  int? get lineId => _lineId;

  String? get factoryName => _factoryName;

  String? get factoryCode => _factoryCode;

  int? get factoryId => _factoryId;

  DateTime? get dateBought => _dateBought;

  DateTime? get dateManufactured => _dateManufactured;

  String? get modelNumber => _modelNumber;

  String? get modelName => _modelName;

  String? get maker => _maker;

  int? get orderNumber => _orderNumber;

  String get memo => _memo?? "";

  ProcessType? get processType => _processType;

  int? get number => _number;

  String get name => _name?? "";

  String? get code => _code;

  int get id => _id!;


  factory MachineDto.fromJson(Map<String, dynamic> json) =>
      _$MachineDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MachineDtoToJson(this);
}
