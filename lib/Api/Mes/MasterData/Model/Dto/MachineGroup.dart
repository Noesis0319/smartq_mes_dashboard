
import 'package:json_annotation/json_annotation.dart';

import '../../../../Base/Type/PasSaveDataType.dart';
import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../EasyFactory/Model/Type/DataType.dart';
import '../Type/MonitoringType.dart';
import '../Type/ProcessType.dart';

part '../Convert/MachineGroupConvert.dart';

class MachineGroupAggregateDto {
  /// <summary>
  /// 설비그룹Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 그룹명
  /// </summary>
  String? _name;

  /// <summary>
  /// 모니터링 유형
  /// </summary>
  MonitoringType? _monitoringType;

  /// <summary>
  /// 생산조건 데이터 유형
  /// </summary>
  DataType? _dataType;

  /// <summary>
  /// Pas 사출조건 데이터 유형
  /// </summary>
  PASSaveDataType? _pasDataType;

  /// <summary>
  /// 메인설비Id
  /// </summary>
  int? _mainMachineId;

  /// <summary>
  /// 설비코드
  /// </summary>
  String? _machineCode;

  /// <summary>
  /// 설비명
  /// </summary>
  String? _machineName;

  /// <summary>
  /// 설비 번호
  /// </summary>
  int? _machineNumber;

  /// <summary>
  /// 설비 공정 유형
  /// </summary>
  ProcessType? _processType;

  /// <summary>
  /// 설비 정렬 인덱스
  /// </summary>
  int? _machineOrderIndex;

  /// <summary>
  /// 부대설비 목록
  /// </summary>
  List<MachineGroupLineDto>? _attachedMachines;

  MachineGroupAggregateDto(
      this._id,
      this._name,
      this._monitoringType,
      this._dataType,
      this._pasDataType,
      this._mainMachineId,
      this._machineCode,
      this._machineName,
      this._machineNumber,
      this._processType,
      this._machineOrderIndex,
      this._attachedMachines);

  factory MachineGroupAggregateDto.fromJson(Map<String, dynamic> json) => _$MachineGroupAggregateFromJson(json);

  Map<String, dynamic> toJson() => _$MachineGroupAggregateToJson(this);

  List<MachineGroupLineDto>? get attachedMachines => _attachedMachines;

  int? get machineOrderIndex => _machineOrderIndex;

  ProcessType? get processType => _processType;

  int? get machineNumber => _machineNumber;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get mainMachineId => _mainMachineId;

  PASSaveDataType? get pasDataType => _pasDataType;

  DataType? get dataType => _dataType;

  MonitoringType? get monitoringType => _monitoringType;

  String? get name => _name;

  int? get id => _id;
}

class MachineGroupSummaryDto {
  /// <summary>
  /// 설비그룹Id
  /// </summary>
  int? _groupId;

  /// <summary>
  /// 그룹명
  /// </summary>
  String? _groupName;

  /// <summary>
  /// 모니터링 유형
  /// </summary>
  MonitoringType? _mainMonitoringType;

  /// <summary>
  /// 생산조건 데이터 유형
  /// </summary>
  DataType? _mainDataType;

  /// <summary>
  /// Pas 사출조건 데이터 유형
  /// </summary>
  PASSaveDataType? _mainPasDataType;

  /// <summary>
  /// 메인설비Id
  /// </summary>
  int? _mainMachineId;

  /// <summary>
  /// 설비코드
  /// </summary>
  String? _mainMachineCode;

  /// <summary>
  /// 설비명
  /// </summary>
  String? _mainMachineName;

  /// <summary>
  /// 설비 번호
  /// </summary>
  int? _mainMachineNumber;

  /// <summary>
  /// 설비 공정 유형
  /// </summary>
  ProcessType? _mainProcessType;

  /// <summary>
  /// 설비 정렬 인덱스
  /// </summary>
  int? _mainMachineOrderIndex;

  int? _lineId;

  /// <summary>
  /// 부대설비 모니터링 유형
  /// </summary>
  MonitoringType? _attachedMonitoringType;

  /// <summary>
  /// 부대설비 생산조건 데이터 유형
  /// </summary>
  DataType? _attachedDataType;

  /// <summary>
  /// 부대설비 Pas 사출조건 데이터 유형
  /// </summary>
  PASSaveDataType? _attachedPasDataType;

  /// <summary>
  /// 부대설비Id
  /// </summary>
  int? _attachedMachineId;

  /// <summary>
  /// 설비코드
  /// </summary>
  String? _attachedMachineCode;

  /// <summary>
  /// 설비명
  /// </summary>
  String? _attachedMachineName;

  /// <summary>
  /// 설비 번호
  /// </summary>
  int? _attachedMachineNumber;

  /// <summary>
  /// 부대설비 공정 유형
  /// </summary>
  ProcessType? _attachedProcessType;

  /// <summary>
  /// 부대설비 정렬 인덱스
  /// </summary>
  int? _attachedMachineOrderIndex;

  MachineGroupSummaryDto(
      this._groupId,
      this._groupName,
      this._mainMonitoringType,
      this._mainDataType,
      this._mainPasDataType,
      this._mainMachineId,
      this._mainMachineCode,
      this._mainMachineName,
      this._mainMachineNumber,
      this._mainProcessType,
      this._mainMachineOrderIndex,
      this._lineId,
      this._attachedMonitoringType,
      this._attachedDataType,
      this._attachedPasDataType,
      this._attachedMachineId,
      this._attachedMachineCode,
      this._attachedMachineName,
      this._attachedMachineNumber,
      this._attachedProcessType,
      this._attachedMachineOrderIndex);

  factory MachineGroupSummaryDto.fromJson(Map<String, dynamic> json) => _$MachineGroupSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$MachineGroupSummaryToJson(this);

  int? get attachedMachineOrderIndex => _attachedMachineOrderIndex;

  ProcessType? get attachedProcessType => _attachedProcessType;

  int? get attachedMachineNumber => _attachedMachineNumber;

  String? get attachedMachineName => _attachedMachineName;

  String? get attachedMachineCode => _attachedMachineCode;

  int? get attachedMachineId => _attachedMachineId;

  PASSaveDataType? get attachedPasDataType => _attachedPasDataType;

  DataType? get attachedDataType => _attachedDataType;

  MonitoringType? get attachedMonitoringType => _attachedMonitoringType;

  int? get lineId => _lineId;

  int? get mainMachineOrderIndex => _mainMachineOrderIndex;

  ProcessType? get mainProcessType => _mainProcessType;

  int? get mainMachineNumber => _mainMachineNumber;

  String? get mainMachineName => _mainMachineName;

  String? get mainMachineCode => _mainMachineCode;

  int? get mainMachineId => _mainMachineId;

  PASSaveDataType? get mainPasDataType => _mainPasDataType;

  DataType? get mainDataType => _mainDataType;

  MonitoringType? get mainMonitoringType => _mainMonitoringType;

  String? get groupName => _groupName;

  int? get groupId => _groupId;
}

class MachineGroupLineDto {
  int? _id;

  /// <summary>
  /// 설비그룹Id
  /// </summary>
  int? _groupId;

  /// <summary>
  /// 모니터링 유형
  /// </summary>
  MonitoringType? _monitoringType;

  /// <summary>
  /// 생산조건 데이터 유형
  /// </summary>
  DataType? _dataType;

  /// <summary>
  /// Pas 사출조건 데이터 유형
  /// </summary>
  PASSaveDataType? _pasDataType;

  /// <summary>
  /// 부대설비Id
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
  /// 설비 번호
  /// </summary>
  int? _machineNumber;

  /// <summary>
  /// 설비 공정 유형
  /// </summary>
  ProcessType? _processType;

  /// <summary>
  /// 설비 정렬 인덱스
  /// </summary>
  int? _machineOrderIndex;

  MachineGroupLineDto(this._id, this._groupId, this._monitoringType, this._dataType, this._pasDataType, this._machineId,
      this._machineCode, this._machineName, this._machineNumber, this._processType, this._machineOrderIndex);

  factory MachineGroupLineDto.fromJson(Map<String, dynamic> json) => _$MachineGroupLineDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MachineGroupLineDtoToJson(this);

  int? get machineOrderIndex => _machineOrderIndex;

  ProcessType? get processType => _processType;

  int? get machineNumber => _machineNumber;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  PASSaveDataType? get pasDataType => _pasDataType;

  DataType? get dataType => _dataType;

  MonitoringType? get monitoringType => _monitoringType;

  int? get groupId => _groupId;

  int? get id => _id;
}
