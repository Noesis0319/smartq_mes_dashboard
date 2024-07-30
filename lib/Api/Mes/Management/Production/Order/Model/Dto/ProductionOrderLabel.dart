

import '../../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/ProductionOrderLabelConvert.dart';

class ProductionOrderLabelDto {
  /// <summary>
  /// 로트Id
  /// </summary>
  int? _lotId;

  /// <summary>
  /// 라벨Id
  /// </summary>
  int? _id;

  /// <summary>
  /// 라벨 번호
  /// </summary>
  String? _labelNumber;

  /// <summary>
  /// 초기 발행 수량
  /// </summary>
  dynamic _initialQty;

  /// <summary>
  /// 라벨 재고 수량
  /// </summary>
  dynamic _inventoryQty;

  ProductionOrderLabelDto(this._lotId, this._id, this._labelNumber, this._initialQty, this._inventoryQty);

  factory ProductionOrderLabelDto.fromJson(Map<String, dynamic> json) => _$OrderLabelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderLabelToJson(this);

  dynamic get inventoryQty => _inventoryQty;

  dynamic get initialQty => _initialQty;

  String? get labelNumber => _labelNumber;

  int? get id => _id;

  int? get lotId => _lotId;
}
