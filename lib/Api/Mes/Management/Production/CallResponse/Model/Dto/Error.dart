
import '../../../../../../../Util/Convert/ConvertHelper.dart';
import '../../../../../../../Util/Convert/Type/ConvertDataType.dart';
import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ErrorConvert.dart';

final DateConvertHelper dateConvertHelper = DateConvertHelper();

class ErrorDto {
  dynamic _id;
  String? _fieldName;
  String? _fieldCaption;
  String? _fieldUnit;
  String? _message;
  String? _occurred;
  bool? _handled;
  dynamic _pV;
  dynamic _sV;
  dynamic _uB;
  dynamic _lB;
  dynamic _machineId;
  dynamic _machineNumber;
  dynamic _lineNumber;

  ErrorDto(this._id, this._fieldName, this._fieldCaption, this._fieldUnit, this._message, this._occurred, this._handled,
      this._pV, this._sV, this._uB, this._lB, this._machineId, this._machineNumber, this._lineNumber);

  dynamic get id => _id;

  String get fieldName => _fieldName?? "";

  String get fieldCaption => _fieldCaption?? "";

  String get fieldUnit => _fieldUnit?? "";

  String get message => _message?? "";

  String get occurred => _occurred?? "";

  bool? get handled => _handled;

  dynamic get pV => _pV;

  dynamic get sV => _sV;

  dynamic get uB => _uB;

  dynamic get lB => _lB;

  dynamic get machineId => _machineId;

  dynamic get machineNumber => _machineNumber;

  dynamic get lineNumber => _lineNumber;

  get occurredYmd => DateConvertHelper.extractDateString(occurred, DateConvertType.YMd);
  get elapsedTime => DateConvertHelper.elapsedTime(_occurred);

  factory ErrorDto.fromJson(Map<String, dynamic> json) => _errorDtoFromJson(json);
  Map<String, dynamic> toJson() => _errorDtoToJson(this);
}
