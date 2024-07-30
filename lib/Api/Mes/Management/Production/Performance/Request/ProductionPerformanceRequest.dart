import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/ProductionPerformanceSummary.dart';
class CuttingPerformanceRequest extends BaseRequest {
  /// 생산 실적 조회
  /// case 1 : factoryId && lineId && processType && workDate1 && workDate2
  /// case 2 : factoryId && processType && workDate1 && workDate2
  /// case 3 : factoryId && workDate1 && workDate2
  Future<void> getPerformanceSummaries(
      {required int factoryId,
      int? lineId,
      String? processType,
      required String workDate1,
      required String workDate2,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.ProductionPerformanceSummariesAnalysis;
    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<ProductionPerformanceSummaryDto> list = responseParsing
        .getValueList(responseBody: response.body)
        .map((v) => ProductionPerformanceSummaryDto.fromJson(v))
        .toList();
    responseCallback(list);
  }
}
