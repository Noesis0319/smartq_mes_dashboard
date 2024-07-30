
import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import 'PasDataField.dart';

part '../Convert/PasDeviceConvert.dart';

/// <summary>
/// pas 디바이스 기본 정보
/// </summary>

class PasDeviceDto {
  int? _id;

  /// <summary>
  /// 디바이스 이름
  /// </summary>
  String? _name;

  /// <summary>
  /// 디바이스 번호
  /// </summary>
  int? _number;

  /// <summary>
  /// mes설비 Id
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
  /// MES에 등록된 설비 번호
  /// </summary>
  int? _machineNumber;

  /// <summary>
  /// 설비가 소속된 라인Id
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
  /// 라인번호
  /// </summary>
  int? _lineNumber;

  /// <summary>
  /// 프로토콜 유형
  /// </summary>
  String? _protocolType;

  /// <summary>
  /// 저장 데이터 유형
  /// </summary>
  String? _saveDataType;

  /// <summary>
  /// 디바이스 IP주소
  /// </summary>
  String? _ipAddress;

  /// <summary>
  /// 디바이스 포트
  /// </summary>
  int? _port;

  /// <summary>
  /// 디바이스 연결경로 (Opc, E63 등)
  /// </summary>
  String? _path;

  /// <summary>
  /// 접속서버 Id
  /// </summary>
  String? _serverId;

  /// <summary>
  /// 접속서버 PW
  /// </summary>
  String? _serverPassword;

  /// <summary>
  /// Opc 접속서버 보안모드
  /// </summary>
  String? _opcSecurityMode;

  /// <summary>
  /// opc접속서버 보안 알고리즘
  /// </summary>
  String? _opcSecurityAlgorithm;

  /// <summary>
  /// 저장방식
  /// </summary>
  String? _savingMethod;

  /// <summary>
  /// 데이터 저장 여부를 판별할 필드명
  /// </summary>
  String? _referenceFieldName;

  /// <summary>
  /// 데이터 저장 주기 (초)
  /// </summary>
  int? _intervalSeconds;

  /// <summary>
  /// 데이터 필드 목록
  /// </summary>
  List<PasDataFieldDto>? _dataFields;

  PasDeviceDto(
      this._id,
      this._name,
      this._number,
      this._machineId,
      this._machineCode,
      this._machineName,
      this._machineNumber,
      this._lineId,
      this._lineCode,
      this._lineName,
      this._lineNumber,
      this._protocolType,
      this._saveDataType,
      this._ipAddress,
      this._port,
      this._path,
      this._serverId,
      this._serverPassword,
      this._opcSecurityMode,
      this._opcSecurityAlgorithm,
      this._savingMethod,
      this._referenceFieldName,
      this._intervalSeconds,
      this._dataFields);



  factory PasDeviceDto.fromJson(Map<String, dynamic> json) => _$PasDeviceDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PasDeviceDtoToJson(this);

  int? get intervalSeconds => _intervalSeconds;

  String? get referenceFieldName => _referenceFieldName;

  String? get savingMethod => _savingMethod;

  String? get opcSecurityAlgorithm => _opcSecurityAlgorithm;

  String? get opcSecurityMode => _opcSecurityMode;

  String? get serverPassword => _serverPassword;

  String? get serverId => _serverId;

  String? get path => _path;

  int? get port => _port;

  String? get ipAddress => _ipAddress;

  String? get saveDataType => _saveDataType;

  String? get protocolType => _protocolType;

  int? get lineNumber => _lineNumber;

  String? get lineName => _lineName;

  String? get lineCode => _lineCode;

  int? get lineId => _lineId;

  int? get machineNumber => _machineNumber;

  String? get machineName => _machineName;

  String? get machineCode => _machineCode;

  int? get machineId => _machineId;

  int? get number => _number;

  String? get name => _name;

  int? get id => _id;

  List<PasDataFieldDto>? get dataFields => _dataFields;
}
