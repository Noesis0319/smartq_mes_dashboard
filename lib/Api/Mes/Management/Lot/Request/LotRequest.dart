import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../Base/BaseRequest.dart';
import '../../../../Util/ApiManagement/Api.dart';
import '../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../../../MasterData/Model/Dto/PriceRecord.dart';
class LotRequest extends BaseRequest {
  Future<void> getList(
      {required String date1,
      required String date2,
      int? itemId,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.LotGetList;
    final String parameter = (
      PathParameterHelper(api.getParameter())
        ..setParameter(parameterName: ParameterName.date1, value: date1)
        ..setParameter(parameterName: ParameterName.date2, value: date2)
        ..setParameter(parameterName: ParameterName.itemId, value: itemId)
    ).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PriceRecordDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => PriceRecordDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
