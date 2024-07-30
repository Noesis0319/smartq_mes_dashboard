

import 'package:json_annotation/json_annotation.dart';

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../../MasterData/Model/Type/DefectLevel.dart';
import '../../../../../MasterData/Model/Type/ProcessType.dart';
import '../../../Common/Model/Type/DiscoveryPoint.dart';

part '../Convert/DefectRecordConvert.dart';

class DefectRecordDto {
  /// <summary>
  /// 공장Id
  /// </summary>
  int? _factoryId;

  /// <summary>
  /// 공장코드
  /// </summary>
  String? _factoryCode;

  /// <summary>
  /// 공장명
  /// </summary>
  String? _factoryName;

  /// <summary>
  /// Id
  /// </summary>
  int? _recordId;

  /// <summary>
  /// 수량
  /// </summary>
  dynamic _defectQuantity;

  /// <summary>
  /// 발생일시
  /// </summary>
  String? _occurred;

  /// <summary>
  /// 발생시점
  /// </summary>
  DiscoveryPoint? _discoveryPoint;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 폐기여부
  /// </summary>
  bool? _isDiscarded;

  /// <summary>
  /// 지시Id
  /// </summary>
  int? _orderId;

  /// <summary>
  /// 설비ID
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
  /// 공정
  /// </summary>
  ProcessType? _processType;

  /// <summary>
  /// 지시라인
  /// </summary>
  int? _orderLineId;

  /// <summary>
  /// 로트Id
  /// </summary>
  int? _lotId;

  /// <summary>
  /// 로트번호
  /// </summary>
  String? _lotNumber;

  /// <summary>
  /// 라벨
  /// </summary>
  int? _labelId;

  String? _labelNumber;

  /// <summary>
  /// 품목ID
  /// </summary>
  int? _itemId;

  /// <summary>
  /// 품목코드
  /// </summary>
  String? _itemCode;

  /// <summary>
  /// 품목명
  /// </summary>
  String? _itemName;

  /// <summary>
  /// 품번
  /// </summary>
  String? _itemNumber;

  /// <summary>
  /// 단위
  /// </summary>
  String? _itemUnit;

  /// <summary>
  /// 규격
  /// </summary>
  String? _itemSpec;

  /// <summary>
  /// 불량원인 Id
  /// </summary>
  int? _reasonId;

  /// <summary>
  /// 원인코드
  /// </summary>
  String? _reasonCode;

  /// <summary>
  /// 원인명
  /// </summary>
  String? _reasonName;

  /// <summary>
  /// 불량유형
  /// </summary>
  String? _defectType;

  /// <summary>
  /// 불량수준
  /// </summary>
  DefectLevel? _defectLevel;

  DefectRecordDto(
      this._factoryId,
      this._factoryCode,
      this._factoryName,
      this._recordId,
      this._defectQuantity,
      this._occurred,
      this._discoveryPoint,
      this._memo,
      this._isDiscarded,
      this._orderId,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._lineId,
      this._lineCode,
      this._lineName,
      this._processType,
      this._orderLineId,
      this._lotId,
      this._lotNumber,
      this._labelId,
      this._labelNumber,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemUnit,
      this._itemSpec,
      this._reasonId,
      this._reasonCode,
      this._reasonName,
      this._defectType,
      this._defectLevel);

  factory DefectRecordDto.fromJson(Map<String, dynamic> json) => _$DefectRecordDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DefectRecordDtoToJson(this);

  DefectLevel? get defectLevel => _defectLevel;

  String? get defectType => _defectType;

  String? get reasonName => _reasonName;

  String? get reasonCode => _reasonCode;

  int? get reasonId => _reasonId;

  String? get itemSpec => _itemSpec;

  String? get itemUnit => _itemUnit;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  String? get labelNumber => _labelNumber;

  int? get labelId => _labelId;

  String? get lotNumber => _lotNumber;

  int? get lotId => _lotId;

  int? get orderLineId => _orderLineId;

  ProcessType? get processType => _processType;

  String? get lineName => _lineName;

  String? get lineCode => _lineCode;

  int? get lineId => _lineId;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get orderId => _orderId;

  bool? get isDiscarded => _isDiscarded;

  String? get memo => _memo;

  DiscoveryPoint? get discoveryPoint => _discoveryPoint;

  String? get occurred => _occurred;

  dynamic get defectQuantity => _defectQuantity;

  int? get recordId => _recordId;

  String? get factoryName => _factoryName;

  String? get factoryCode => _factoryCode;

  int? get factoryId => _factoryId;
}
