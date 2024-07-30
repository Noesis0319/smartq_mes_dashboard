

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../Base/BaseRequest.dart';
import '../../../../Util/ApiManagement/Api.dart';
import '../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/PurchaseOrderSummary.dart';

class PurchaseOrderRequest extends BaseRequest {
  /// 발주입하마감 분석 대상 표준 구매발주 조회
  /// case 1 : factoryId && categoryId && sellerId && itemId && orderDate1 && orderDate2
  /// case 2 : factoryId && categoryId && sellerId  && orderDate1 && orderDate2
  /// case 3 : factoryId && sellerId && itemId && orderDate1 && orderDate2
  /// case 4 : factoryId && categoryId && itemId && orderDate1 && orderDate2
  /// case 5 : factoryId && itemId && orderDate1 && orderDate2
  /// case 6 : factoryId && sellerId && orderDate1 && orderDate2
  /// case 7 : factoryId && categoryId && orderDate1 && orderDate2
  /// case 8 : factoryId && orderDate1 && orderDate2
  Future<void> getOrderSummariesToAnalysis(
      {required int factoryId,
      int? categoryId,
      int? sellerId,
      int? itemId,
      required String orderDate1,
      required String orderDate2,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.PurchaseOrderSummariesToAnalysis;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.sellerId, value: sellerId)
          ..setParameter(parameterName: ParameterName.itemId, value: itemId)
          ..setParameter(parameterName: ParameterName.orderDate1, value: orderDate1)
          ..setParameter(parameterName: ParameterName.orderDate2, value: orderDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PurchaseOrderSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => PurchaseOrderSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }
}
