import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../Base/BaseRequest.dart';
import '../../../../Util/ApiManagement/Api.dart';
import '../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/GoodsIssueSummary.dart';
class SalesIssueRequest extends BaseRequest {
  /// 수주출하마감 분석 대상 출하 조회
  /// case 1 : factoryId && categoryId && buyerId && itemId && issueDate1 && issueDate2
  /// case 2 : factoryId && categoryId && buyerId && issueDate1 && issueDate2
  /// case 3 : factoryId && buyerId && itemId && issueDate1 && issueDate2
  /// case 4 : factoryId && categoryId && itemId && issueDate1 && issueDate2
  /// case 5 : factoryId && itemId && issueDate1 && issueDate2
  /// case 6 : factoryId && buyerId && issueDate1 && issueDate2
  /// case 7 : factoryId && categoryId && issueDate1 && issueDate2
  /// case 8 : factoryId && issueDate1 && issueDate2
  Future<void> getSummariesToAnalysis(
      {required int factoryId,
      int? categoryId,
      int? buyerId,
      int? itemId,
      required String issueDate1,
      required String issueDate2,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.SalesIssueGetSummariesToAnalysis;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.buyerId, value: buyerId)
          ..setParameter(parameterName: ParameterName.itemId, value: itemId)
          ..setParameter(parameterName: ParameterName.issueDate1, value: issueDate1)
          ..setParameter(parameterName: ParameterName.issueDate2, value: issueDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    List<GoodsIssueSummaryDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => GoodsIssueSummaryDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
