import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../Base/BaseRequest.dart';
import '../../../../Util/ApiManagement/Api.dart';
import '../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/GoodsPickingInspect.dart';
class GoodsPickingRequest extends BaseRequest {
  /// 출하검사 대상 출고 summary 데이터 조회
  Future<void> getGoodsPickingSummaryInspect(
      {required int factoryId,
      required int categoryId,
      required int pickingDate1,
      required int pickingDate2,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.GetGoodsPickingSummaryInspect;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId)
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.pickingDate1, value: pickingDate1)
          ..setParameter(parameterName: ParameterName.pickingDate2, value: pickingDate2))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    List<GoodsPickingInspectDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => GoodsPickingInspectDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
