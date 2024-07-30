
import 'package:json_annotation/json_annotation.dart';

import '../../../../Base/Type/Currency.dart';
import '../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/FactoryConvert.dart';

class FactoryDto {
  int? _id;

  /// <summary>
  /// 공장명
  /// </summary>
  String? _name;

  /// <summary>
  /// 공장코드
  /// </summary>
  String? _code;

  /// <summary>
  /// 메모
  /// </summary>
  String? _memo;

  /// <summary>
  /// 세금용 상호
  /// </summary>
  String? _taxBillName;

  /// <summary>
  /// 세금용 이메일
  /// </summary>
  String? _taxBillEmail;

  /// <summary>
  /// 대표 이사
  /// </summary>
  String? _representativeDirector;

  /// <summary>
  /// 사업자 등록 번호
  /// </summary>
  String? _brn;

  /// <summary>
  /// 법인 등록 번호
  /// </summary>
  String? _crn;

  /// <summary>
  /// 업태
  /// </summary>
  String? _businessCategory;

  /// <summary>
  /// 업종
  /// </summary>
  String? _businessType;

  /// <summary>
  /// 사용 통화
  /// </summary>
  Currency? _currency;

  /// <summary>
  /// 기타 주소
  /// </summary>
  String? _street;

  /// <summary>
  /// 시/군
  /// </summary>
  String? _city;

  /// <summary>
  /// 광역시/도
  /// </summary>
  String? _state;

  /// <summary>
  /// 국가
  /// </summary>
  String? _country;

  /// <summary>
  /// 우편번호
  /// </summary>
  String? _zipCode;

  /// <summary>
  /// 은행이름
  /// </summary>
  String? _bankName;

  /// <summary>
  /// 예금자명
  /// </summary>
  String? _bankAccountOwnerName;

  /// <summary>
  /// 계좌번호
  /// </summary>
  String? _bankAccountNumber;

  /// <summary>
  /// 전화번호
  /// </summary>
  String? _phoneNumber;

  /// <summary>
  /// 팩스번호
  /// </summary>
  String? _faxNumber;

  /// <summary>
  /// 홈페이지
  /// </summary>
  String? _homepage;

  /// <summary>
  /// 이메일
  /// </summary>

  String? _email;

  /// <summary>
  /// 기타 전화번호
  /// </summary>
  String? _additionalPhoneNumber;

  FactoryDto(
      this._id,
      this._name,
      this._code,
      this._memo,
      this._taxBillName,
      this._taxBillEmail,
      this._representativeDirector,
      this._brn,
      this._crn,
      this._businessCategory,
      this._businessType,
      this._currency,
      this._street,
      this._city,
      this._state,
      this._country,
      this._zipCode,
      this._bankName,
      this._bankAccountOwnerName,
      this._bankAccountNumber,
      this._phoneNumber,
      this._faxNumber,
      this._homepage,
      this._email,
      this._additionalPhoneNumber);

  String? get additionalPhoneNumber => _additionalPhoneNumber;

  String? get email => _email;

  String? get homepage => _homepage;

  String? get faxNumber => _faxNumber;

  String? get phoneNumber => _phoneNumber;

  String? get bankAccountNumber => _bankAccountNumber;

  String? get bankAccountOwnerName => _bankAccountOwnerName;

  String? get bankName => _bankName;

  String? get zipCode => _zipCode;

  String? get country => _country;

  String? get state => _state;

  String? get city => _city;

  String? get street => _street;

  Currency? get currency => _currency;

  String? get businessType => _businessType;

  String? get businessCategory => _businessCategory;

  String get crn => _crn!;

  String get brn => _brn!;

  String? get representativeDirector => _representativeDirector;

  String? get taxBillEmail => _taxBillEmail;

  String? get taxBillName => _taxBillName;

  String get memo => _memo?? "";

  String get code => _code?? "";

  String get name => _name?? "";

  int get id => _id!;

  factory FactoryDto.fromJson(Map<String, dynamic> json) =>
      _$FactoryDtoFromJson(json);
  Map<String, dynamic> toJson()=>_$FactoryDtoToJson(this);
}
