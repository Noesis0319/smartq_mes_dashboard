import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/ProductionOrderAggregate.dart';
import '../Model/Dto/ProductionOrderSummary.dart';

class HandworkOrderRequest extends BaseRequest {
  Future<void> getOrderSummaries(
      {required int factoryId,
      required String planDate1,
      required String planDate2,
      String? status,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.HandworkOrderSummaries;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.planDate1, value: planDate1)
          ..setParameter(parameterName: ParameterName.planDate2, value: planDate2)
          ..setParameter(parameterName: ParameterName.status, value: status))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<ProductionOrderSummary> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => ProductionOrderSummary.fromJson(v))
        .toList();
    responseCallback(list);
  }

  /// required case1 : factoryId && planDate1 && planDate2
  /// required case2 : factoryId && beginTime && endTime
  Future<void> getOrders(
      {required int factoryId,
      required String planDate1,
      required String planDate2,
      String? status,
      String? beginTime,
      String? endTime,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.HandworkOrderGetList;
    final String parameter = (PathParameterHelper(api.getParameter()
          ..setParameter(parameterName: ParameterName.factoryId, Value: factoryId)
          ..setParameter(parameterName: ParameterName.planDate1, Value: planDate1)
          ..setParameter(parameterName: ParameterName.planDate2, Value: planDate2)
          ..setParameter(parameterName: ParameterName.status, Value: status)
          ..setParameter(parameterName: ParameterName.beginTime, Value: beginTime)
          ..setParameter(parameterName: ParameterName.endTime, Value: endTime)))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<ProductionOrderAggregateDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => ProductionOrderAggregateDto.fromJson(v))
        .toList();
    responseCallback(list);
  }
}
