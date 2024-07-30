part of '../Dto/PasDataField.dart';

PasDataFieldDto _$PasDataFieldDtoFromJson(Map<String, dynamic> json) => PasDataFieldDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      (json[ApiJsonKey.DeviceId.key] as num?)?.toInt(),
      json[ApiJsonKey.Name.key] as String?,
      json[ApiJsonKey.Caption.key] as String?,
      json[ApiJsonKey.Unit.key] as String?,
      $enumDecodeNullable(_$PASProtocolTypeEnumMap, json[ApiJsonKey.ProtocolType.key]),
      json[ApiJsonKey.UserDataType.key] as String?,
      json[ApiJsonKey.Signed.key] as bool?,
      (json[ApiJsonKey.DecimalPoint.key] as num?)?.toInt(),
      $enumDecodeNullable(_$CharConversionTypeEnumMap, json[ApiJsonKey.CharConversionType.key]),
      $enumDecodeNullable(_$DataOrderEnumMap, json[ApiJsonKey.WordOrder.key]),
      $enumDecodeNullable(_$DataOrderEnumMap, json[ApiJsonKey.ByteOrder.key]),
      $enumDecodeNullable(_$ModbusObjectTypeEnumMap, json[ApiJsonKey.ModbusObjectType.key]),
      $enumDecodeNullable(_$FEnetMemoryTypeEnumMap, json[ApiJsonKey.FEnetMemoryType.key]),
      $enumDecodeNullable(_$FEnetDataTypeEnumMap, json[ApiJsonKey.FEnetDataType.key]),
      (json[ApiJsonKey.Address.key] as num?)?.toInt(),
      (json[ApiJsonKey.Length.key] as num?)?.toInt(),
      json[ApiJsonKey.Node.key] as String?,
      json[ApiJsonKey.IsSave.key] as bool?,
      json[ApiJsonKey.NumTransformation.key] as String?,
    );

Map<String, dynamic> _$PasDataFieldDtoToJson(PasDataFieldDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.DeviceId.key, instance._deviceId);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(ApiJsonKey.Caption.key, instance._caption);
  writeNotNull(ApiJsonKey.Unit.key, instance._unit);
  writeNotNull(ApiJsonKey.ProtocolType.key, _$PASProtocolTypeEnumMap[instance.protocolType]);
  writeNotNull(ApiJsonKey.UserDataType.key, instance._userDataType);
  writeNotNull(ApiJsonKey.Signed.key, instance._signed);
  writeNotNull(ApiJsonKey.DecimalPoint.key, instance._decimalPoint);
  writeNotNull(ApiJsonKey.CharConversionType.key, _$CharConversionTypeEnumMap[instance._charConversionType]);
  writeNotNull(ApiJsonKey.WordOrder.key, _$DataOrderEnumMap[instance._wordOrder]);
  writeNotNull(ApiJsonKey.ByteOrder.key, _$DataOrderEnumMap[instance._byteOrder]);
  writeNotNull(ApiJsonKey.ModbusObjectType.key, _$ModbusObjectTypeEnumMap[instance.modbusObjectType]);
  writeNotNull(ApiJsonKey.FEnetMemoryType.key, _$FEnetMemoryTypeEnumMap[instance.fEnetMemoryType]);
  writeNotNull(ApiJsonKey.FEnetDataType.key, _$FEnetDataTypeEnumMap[instance.fEnetDataType]);
  writeNotNull(ApiJsonKey.Address.key, instance._address);
  writeNotNull(ApiJsonKey.Length.key, instance._length);
  writeNotNull(ApiJsonKey.Node.key, instance._node);
  writeNotNull(ApiJsonKey.IsSave.key, instance._isSave);
  writeNotNull(ApiJsonKey.NumTransformation.key, instance._numTransformation);
  return val;
}

const _$PASProtocolTypeEnumMap = {
  PASProtocolType.Modbus: 'Modbus',
  PASProtocolType.Ms3000: 'Ms3000',
  PASProtocolType.FEnet: 'FEnet',
  PASProtocolType.OPCUA: 'OPCUA',
  PASProtocolType.Euromap63: 'Euromap63',
  PASProtocolType.NisseiInjection: 'NisseiInjection',
  PASProtocolType.WoojinInjection: 'WoojinInjection',
};

const _$CharConversionTypeEnumMap = {
  CharConversionType.Byte: 'Byte',
  CharConversionType.Short: 'Short',
};

const _$DataOrderEnumMap = {
  DataOrder.LittleEndian: 'LittleEndian',
  DataOrder.BigEndian: 'BigEndian',
};

const _$ModbusObjectTypeEnumMap = {
  ModbusObjectType.Coil: 'Coil',
  ModbusObjectType.DiscreteInput: 'DiscreteInput',
  ModbusObjectType.InputRegister: 'InputRegister',
  ModbusObjectType.HoldingRegister: 'HoldingRegister',
};

const _$FEnetMemoryTypeEnumMap = {
  FEnetMemoryType.P: 'P',
  FEnetMemoryType.M: 'M',
  FEnetMemoryType.L: 'L',
  FEnetMemoryType.F: 'F',
  FEnetMemoryType.K: 'K',
  FEnetMemoryType.C: 'C',
  FEnetMemoryType.D: 'D',
  FEnetMemoryType.T: 'T',
  FEnetMemoryType.N: 'N',
  FEnetMemoryType.R: 'R',
};

const _$FEnetDataTypeEnumMap = {
  FEnetDataType.X: 'X',
  FEnetDataType.B: 'B',
  FEnetDataType.W: 'W',
  FEnetDataType.D: 'D',
  FEnetDataType.L: 'L',
};
