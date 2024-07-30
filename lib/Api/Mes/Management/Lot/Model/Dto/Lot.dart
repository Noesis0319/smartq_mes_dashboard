

import 'package:json_annotation/json_annotation.dart';

import '../../../../../Util/Helper/Parsing/ApiJsonKey.dart';
import '../../../../MasterData/Model/Type/ProcessType.dart';
import '../../Type/LotType.dart';

part '../Convert/LotConvert.dart';

class LotDto {
  int? _id;

  /// <summary>
  /// 로트유형
  /// </summary>
  LotType? _lotType;

  /// <summary>
  /// 공정유형
  /// </summary>
  ProcessType? _processType;

  /// <summary>
  /// 로트번호
  /// </summary>
  String? _lotNumber;

  /// <summary>
  /// 로트생성일자
  /// </summary>
  String? _lotCreationDate;

  /// <summary>
  /// 품목 제조일
  /// </summary>
  String? _manufactureDate;

  /// <summary>
  /// 사용자 임의 입력 로트번호
  /// </summary>
  String? _customNumber;

  /// <summary>
  /// 입고수량
  /// </summary>
  dynamic _putAwayQty;

  /// <summary>
  /// 출고수량
  /// </summary>
  dynamic _pickingQty;

  /// <summary>
  /// 출고가능 수량
  /// </summary>
  dynamic _availablePickingQty;

  /// <summary>
  /// 품목Id
  /// </summary>
  int? _itemId;

  /// <summary>
  /// 품목코드
  /// </summary>
  String? _itemCode;

  /// <summary>
  /// 품목이름
  /// </summary>
  String? _itemName;

  /// <summary>
  /// 품목번호
  /// </summary>
  String? _itemNumber;

  /// <summary>
  /// 품목규격
  /// </summary>
  String? _itemSpec;

  /// <summary>
  /// 품목단위
  /// </summary>
  String? _itemUnit;

  LotDto(
      this._id,
      this._lotType,
      this._processType,
      this._lotNumber,
      this._lotCreationDate,
      this._manufactureDate,
      this._customNumber,
      this._putAwayQty,
      this._pickingQty,
      this._availablePickingQty,
      this._itemId,
      this._itemCode,
      this._itemName,
      this._itemNumber,
      this._itemSpec,
      this._itemUnit);

  factory LotDto.fromJson(Map<String, dynamic> json) => _$LotDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LotDtoToJson(this);

  String? get itemUnit => _itemUnit;

  String? get itemSpec => _itemSpec;

  String? get itemNumber => _itemNumber;

  String? get itemName => _itemName;

  String? get itemCode => _itemCode;

  int? get itemId => _itemId;

  dynamic get availablePickingQty => _availablePickingQty;

  dynamic get pickingQty => _pickingQty;

  dynamic get putAwayQty => _putAwayQty;

  String? get customNumber => _customNumber;

  String? get manufactureDate => _manufactureDate;

  String? get lotCreationDate => _lotCreationDate;

  String? get lotNumber => _lotNumber;

  ProcessType? get processType => _processType;

  LotType? get lotType => _lotType;

  int? get id => _id;
}
