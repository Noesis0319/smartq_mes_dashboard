import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../Base/BaseRequest.dart';
import '../../../../Util/ApiManagement/Api.dart';
import '../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/SalesOrderSummary.dart';
class SalesOrderRequest extends BaseRequest{

  /// 수주출하마감 분석 대상 수주 조회
  /// case 1 : factoryId && categoryId && buyerId && itemId && orderDate1 && orderDate2
  /// case 2 : factoryId && categoryId && buyerId && orderDate1 && orderDate2
  /// case 3 : factoryId && buyerId && itemId && orderDate1 && orderDate2
  /// case 4 : factoryId && categoryId && buyerId && itemId &&  orderDate1 && orderDate2
  /// case 5 : factoryId && categoryId && itemId && orderDate1 && orderDate2
  /// case 6 : factoryId && itemId && orderDate1 && orderDate2
  /// case 7 : factoryId && buyerId && orderDate1 && orderDate2
  /// case 8 : factoryId && categoryId && orderDate1 && orderDate2
  /// case 9 : factoryId && orderDate1 && orderDate2
  Future<void> getOrderSummaries(
      {required int factoryId,
        int? categoryId,
        int? buyerId,
        int? itemId,
        required String orderDate1,
        required String orderDate2,
        required Function responseCallback,
        required BuildContext context}) async {
    const Api api = Api.SalesOrderGetOrderSummariesToAnalysis;
    final String parameter = (PathParameterHelper(api.getParameter())
      ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
      ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
      ..setParameter(parameterName: ParameterName.buyerId, value: buyerId)
      ..setParameter(parameterName: ParameterName.itemId, value: itemId)
      ..setParameter(parameterName: ParameterName.orderDate1, value: orderDate1)
      ..setParameter(parameterName: ParameterName.orderDate2, value: orderDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<SalesOrderSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => SalesOrderSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }
}