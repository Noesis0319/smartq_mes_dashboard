part of '../Dto/Factory.dart';

FactoryDto _$FactoryDtoFromJson(Map<String, dynamic> json) => FactoryDto(
      (json[ApiJsonKey.Id.key] as num?)?.toInt(),
      json[ApiJsonKey.Name.key] as String?,
      json[ApiJsonKey.Code.key] as String?,
      json[ApiJsonKey.Memo.key] as String?,
      json[ApiJsonKey.TaxBillName.key] as String?,
      json[ApiJsonKey.TaxBillEmail.key] as String?,
      json[ApiJsonKey.RepresentiveDirector.key] as String?,
      json[ApiJsonKey.Brn.key] as String?,
      json[ApiJsonKey.Crn.key] as String?,
      json[ApiJsonKey.BusinessCategory.key] as String?,
      json[ApiJsonKey.BusinessType.key] as String?,
      $enumDecodeNullable(_$CurrencyEnumMap, json[ApiJsonKey.Currency.key]),
      json[ApiJsonKey.Street.key] as String?,
      json[ApiJsonKey.City.key] as String?,
      json[ApiJsonKey.State.key] as String?,
      json[ApiJsonKey.Country.key] as String?,
      json[ApiJsonKey.ZipCode.key] as String?,
      json[ApiJsonKey.BankName.key] as String?,
      json[ApiJsonKey.BankAccountOwnerName.key] as String?,
      json[ApiJsonKey.BankAccountNumber.key] as String?,
      json[ApiJsonKey.PhoneNumber.key] as String?,
      json[ApiJsonKey.FaxNumber.key] as String?,
      json[ApiJsonKey.Homepage.key] as String?,
      json[ApiJsonKey.Email.key] as String?,
      json[ApiJsonKey.AdditionalPhoneNumber.key] as String?,
    );

Map<String, dynamic> _$FactoryDtoToJson(FactoryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(ApiJsonKey.Id.key, instance._id);
  writeNotNull(ApiJsonKey.Name.key, instance._name);
  writeNotNull(ApiJsonKey.Code.key, instance._code);
  writeNotNull(ApiJsonKey.Memo.key, instance._memo);
  writeNotNull(ApiJsonKey.TaxBillName.key, instance._taxBillName);
  writeNotNull(ApiJsonKey.TaxBillEmail.key, instance._taxBillEmail);
  writeNotNull(ApiJsonKey.RepresentiveDirector.key, instance._representativeDirector);
  writeNotNull(ApiJsonKey.Brn.key, instance._brn);
  writeNotNull(ApiJsonKey.Crn.key, instance._crn);
  writeNotNull(ApiJsonKey.BusinessCategory.key, instance._businessCategory);
  writeNotNull(ApiJsonKey.BusinessType.key, instance._businessType);
  writeNotNull(ApiJsonKey.Currency.key, instance._currency);
  writeNotNull(ApiJsonKey.Street.key, instance._street);
  writeNotNull(ApiJsonKey.City.key, instance._city);
  writeNotNull(ApiJsonKey.State.key, instance._state);
  writeNotNull(ApiJsonKey.Country.key, instance._country);
  writeNotNull(ApiJsonKey.ZipCode.key, instance._zipCode);
  writeNotNull(ApiJsonKey.BankName.key, instance._bankName);
  writeNotNull(ApiJsonKey.BankAccountOwnerName.key, instance._bankAccountOwnerName);
  writeNotNull(ApiJsonKey.BankAccountNumber.key, instance._bankAccountNumber);
  writeNotNull(ApiJsonKey.PhoneNumber.key, instance._phoneNumber);
  writeNotNull(ApiJsonKey.FaxNumber.key, instance._faxNumber);
  writeNotNull(ApiJsonKey.Homepage.key, instance._homepage);
  writeNotNull(ApiJsonKey.Email.key, instance._email);
  writeNotNull(ApiJsonKey.AdditionalPhoneNumber.key, instance._additionalPhoneNumber);
  return val;
}

const _$CurrencyEnumMap = {
  Currency.None: 'None',
  Currency.Won: 'Won',
  Currency.Dollar: 'Dollar',
  Currency.ChineseYuan: 'ChineseYuan',
  Currency.JapaneseYen: 'JapaneseYen',
  Currency.Euro: 'Euro',
  Currency.BritishPound: 'BritishPound',
  Currency.IndonesianRupiah: 'IndonesianRupiah',
};
