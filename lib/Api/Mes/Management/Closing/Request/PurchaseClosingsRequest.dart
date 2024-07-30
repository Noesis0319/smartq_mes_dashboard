
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../Base/BaseRequest.dart';
import '../../../../Util/ApiManagement/Api.dart';
import '../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/PurchaseClosingSummary.dart';

class PurchaseClosingsRequest extends BaseRequest {

  /// 발주입하마감 분석 대상 마감 조회 (표준입하)
  /// case 1 : factoryId && categoryId && sellerId && itemId && closingDate1 && closingDate2
  /// case 2 : factoryId && categoryId && sellerId && closingDate1 && closingDate2
  /// case 3 : factoryId && sellerId && itemId && closingDate1 && closingDate2
  /// case 4 : factoryId && categoryId && itemId && closingDate1 && closingDate2
  /// case 5 : factoryId itemId && closingDate1 && closingDate2
  /// case 6 : factoryId && sellerId && closingDate1 && closingDate2
  /// case 7 : factoryId && categoryId && closingDate1 && closingDate2
  /// case 8 : factoryId && closingDate1 && closingDate2
  Future<void> getStandardClosingSummariesToAnalysis(
      {required int factoryId,
      int? categoryId,
      int? sellerId,
      int? itemId,
      required String closingDate1,
      required String closingDate2,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.PurchaseClosingSummariesToAnalysis;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.sellerId, value: sellerId)
          ..setParameter(parameterName: ParameterName.itemId, value: itemId)
          ..setParameter(parameterName: ParameterName.closingDate1, value: closingDate1)
          ..setParameter(parameterName: ParameterName.closingDate2, value: closingDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PurchaseClosingSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => PurchaseClosingSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }
}
