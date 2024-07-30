
import 'package:json_annotation/json_annotation.dart';

import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../Type/CharConversionType.dart';
import '../Type/DataOrder.dart';
import '../Type/FEnetDataType.dart';
import '../Type/FEnetMemoryType.dart';
import '../Type/ModBusObjectType.dart';
import '../Type/PasProtocolType.dart';

part '../Convert/PasDataFieldConvert.dart';

/// <summary>
/// pas datafield 기본 정보
/// </summary>

class PasDataFieldDto {
  /// <summary>
  /// Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 디바이스 Id
  /// </summary>
  int? _deviceId;

  /// <summary>
  /// 필드명
  /// </summary>
  String? _name;

  /// <summary>
  /// 필드 캡션
  /// </summary>
  String? _caption;

  /// <summary>
  /// 표기 단위
  /// </summary>
  String? _unit;

  /// <summary>
  /// 장비 프로토콜 타입
  /// </summary>
  PASProtocolType? _protocolType;

  /// <summary>
  /// 사용자 정의 데이터 타입
  /// </summary>
  String? _userDataType;

  /// <summary>
  /// 자료형(byte, short, int?) 부호 여부.
  /// true인 경우 signed 타입. false인 경우 unsigned 타입
  /// </summary>
  bool? _signed;

  /// <summary>
  /// 소수점 위치.
  /// UserDataType에서 사용 (Decimal=1)
  /// </summary>
  int? _decimalPoint;

  /// <summary>
  /// 문자 소스 타입
  /// </summary>
  CharConversionType? _charConversionType;

  /// <summary>
  /// word 저장 순서
  /// </summary>
  DataOrder? _wordOrder;

  /// <summary>
  /// byte 저장 순서
  /// </summary>
  DataOrder? _byteOrder;

  /// <summary>
  /// 모드버스 객체타입.
  /// 모드버스 프로토콜을 사용할 경우에만 유효
  /// </summary>
  ModbusObjectType? _modbusObjectType;

  /// <summary>
  /// FEnet 메모리 타입.
  /// FEnet 프로토콜인 경우에만 유효
  /// </summary>
  FEnetMemoryType? _fEnetMemoryType;

  /// <summary>
  /// FEnet 데이터타입.
  /// FEnet 프로토콜인 경우에만 유효
  /// </summary>
  FEnetDataType? _fEnetDataType;

  /// <summary>
  /// 시작주소
  /// </summary>
  int? _address;

  /// <summary>
  /// 길이
  /// </summary>
  int? _length;

  /// <summary>
  /// 참조 노드 경로 (OPC, E63 프로토콜)
  /// </summary>
  String? _node;

  /// <summary>
  /// db저장 여부
  /// </summary>
  bool? _isSave;

  /// <summary>
  /// 숫자 변환식.숫자형 단위변환이나 절대값 추가 등에 사용.
  /// </summary>
  String? _numTransformation;


  PasDataFieldDto(
      this._id,
      this._deviceId,
      this._name,
      this._caption,
      this._unit,
      this._protocolType,
      this._userDataType,
      this._signed,
      this._decimalPoint,
      this._charConversionType,
      this._wordOrder,
      this._byteOrder,
      this._modbusObjectType,
      this._fEnetMemoryType,
      this._fEnetDataType,
      this._address,
      this._length,
      this._node,
      this._isSave,
      this._numTransformation);

  factory PasDataFieldDto.fromJson(Map<String, dynamic> json) => _$PasDataFieldDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PasDataFieldDtoToJson(this);

  String? get numTransformation => _numTransformation;

  bool? get isSave => _isSave;

  String? get node => _node;

  int? get length => _length;

  int? get address => _address;

  FEnetDataType? get fEnetDataType => _fEnetDataType;

  FEnetMemoryType? get fEnetMemoryType => _fEnetMemoryType;

  ModbusObjectType? get modbusObjectType => _modbusObjectType;

  DataOrder? get byteOrder => _byteOrder;

  DataOrder? get wordOrder => _wordOrder;

  CharConversionType? get charConversionType => _charConversionType;

  int? get decimalPoint => _decimalPoint;

  bool? get signed => _signed;

  String? get userDataType => _userDataType;

  PASProtocolType? get protocolType => _protocolType;

  String? get unit => _unit;

  String? get caption => _caption;

  String? get name => _name;

  int? get deviceId => _deviceId;

  int? get id => _id;
}
