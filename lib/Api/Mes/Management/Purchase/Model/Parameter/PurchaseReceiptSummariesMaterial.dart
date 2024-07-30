
import '../../../../../Util/Helper/Parsing/ApiJsonKey.dart';

part '../Convert/PurchaseReceiptSummaryMaterialConvert.dart';

class PurchaseReceiptSummariesMaterialParameter{
  final int? _factoryId;
  final List<int>? _itemIds;
  final String? _receiptDate1;
  final String? _receiptDate2;

  PurchaseReceiptSummariesMaterialParameter(this._factoryId, this._itemIds, this._receiptDate1, this._receiptDate2);

  Map<String, dynamic> toJson()=>_purchaseReceiptSummariesMaterialParameterToJson(this);

  String? get receiptDate2 => _receiptDate2;

  String? get receiptDate1 => _receiptDate1;

  List<int>? get itemIds => _itemIds;

  int? get factoryId => _factoryId;
}