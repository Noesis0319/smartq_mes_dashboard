
import 'package:json_annotation/json_annotation.dart';

import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../Type/DataType.dart';
import '../Type/SaveMethod.dart';

part '../Convert/DataMachineSettingDetailConvert.dart';

class DataMachineSettingDetailDto{
  /// <summary>
  /// Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 설비Id
  /// </summary>
  int? _machineId;

  /// <summary>
  /// 설비명
  /// </summary>
  String? _machineCode;

  /// <summary>
  /// 설비명
  /// </summary>
  String? machineName;

  /// <summary>
  /// 설비번호
  /// </summary>
  int? _machineNumber;

  /// <summary>
  /// 라인Id
  /// </summary>
  int? _lineId;

  /// <summary>
  /// 라인번호
  /// </summary>
  int? _lineNumber;

  /// <summary>
  /// 라인명
  /// </summary>
  String? _lineName;

  /// <summary>
  /// 수집그룹ID
  /// </summary>
  int? _collectionGroupId;

  /// <summary>
  /// 수집그룹명
  /// </summary>
  String? _collectionGroupName;

  /// <summary>
  /// 수집그룹 수집유형
  /// </summary>
  DataType? _collectionGroupDataType;

  /// <summary>
  /// 수집그룹 저장옵션
  /// </summary>
  SaveMethod? _collectionGroupSaveMethod;

  /// <summary>
  /// 수집그룹 기준요소
  /// </summary>
  String? _collectionGroupPivotElement;

  /// <summary>
  /// 수집그룹 저장주기
  /// </summary>
  int? _collectionGroupDuration;

  /// <summary>
  /// 수집기ID
  /// </summary>
  int? _collectorId;

  /// <summary>
  /// 수집기이름
  /// </summary>
  String? _collectorName;

  /// <summary>
  /// 수집기 호스트명 사용여부
  /// </summary>
  bool? _collectorUseHostName;

  /// <summary>
  /// 수집기 호스트명
  /// </summary>
  String? _collectorHostName;

  /// <summary>
  /// 수집기 서버IP
  /// </summary>
  String? _collectorServerIp;

  /// <summary>
  /// 수집기 서버포트
  /// </summary>
  int? _collectorServerPort;

  DataMachineSettingDetailDto(
      this._id,
      this._machineId,
      this._machineCode,
      this.machineName,
      this._machineNumber,
      this._lineId,
      this._lineNumber,
      this._lineName,
      this._collectionGroupId,
      this._collectionGroupName,
      this._collectionGroupDataType,
      this._collectionGroupSaveMethod,
      this._collectionGroupPivotElement,
      this._collectionGroupDuration,
      this._collectorId,
      this._collectorName,
      this._collectorUseHostName,
      this._collectorHostName,
      this._collectorServerIp,
      this._collectorServerPort);
  factory DataMachineSettingDetailDto.fromJson(Map<String, dynamic> json) =>
      _$DataMachineSettingDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DataMachineSettingDetailDtoToJson(this);

  int? get collectorServerPort => _collectorServerPort;

  String? get collectorServerIp => _collectorServerIp;

  String? get collectorHostName => _collectorHostName;

  bool? get collectorUseHostName => _collectorUseHostName;

  String? get collectorName => _collectorName;

  int? get collectorId => _collectorId;

  int? get collectionGroupDuration => _collectionGroupDuration;

  String? get collectionGroupPivotElement => _collectionGroupPivotElement;

  SaveMethod? get collectionGroupSaveMethod => _collectionGroupSaveMethod;

  DataType? get collectionGroupDataType => _collectionGroupDataType;

  String? get collectionGroupName => _collectionGroupName;

  int? get collectionGroupId => _collectionGroupId;

  String? get lineName => _lineName;

  int? get lineNumber => _lineNumber;

  int? get lineId => _lineId;

  int? get machineNumber => _machineNumber;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get id => _id;
}
