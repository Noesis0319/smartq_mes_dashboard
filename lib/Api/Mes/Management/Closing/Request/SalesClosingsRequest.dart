import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../Base/BaseRequest.dart';
import '../../../../Util/ApiManagement/Api.dart';
import '../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/SalesClosingSummary.dart';
class SalesClosingsRequest extends BaseRequest{

  /// 수주출하마감 분석 대상 매출마감 조회(표준출하)
  Future<void> getStandardSalesClosingSummariesToAnalysis(
      {required int factoryId,
        int? categoryId,
        int? buyerId,
        int? itemId,
        required String closingDate1,
        required String closingDate2,
        required Function responseCallback,
        required BuildContext context}) async {
    const Api api = Api.SalesClosingGetStandardSalesClosingSummariesToAnalysis;
    final String parameter = (PathParameterHelper(api.getParameter())
      ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
      ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
      ..setParameter(parameterName: ParameterName.buyerId, value: buyerId)
      ..setParameter(parameterName: ParameterName.itemId, value: itemId)
      ..setParameter(parameterName: ParameterName.closingDate1, value: closingDate1)
      ..setParameter(parameterName: ParameterName.closingDate2, value: closingDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<SalesClosingSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => SalesClosingSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }
}