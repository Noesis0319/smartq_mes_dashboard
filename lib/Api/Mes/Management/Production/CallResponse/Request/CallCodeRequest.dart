import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/CallCode.dart';
class CallCodeRequest extends BaseRequest{
  Future<void> getList({required int lineId, required Function responseCallback, required BuildContext context})async{
    const Api api = Api.CallCodeGetList;
    final String parameter = (PathParameterHelper(api.getParameter())..setParameter(parameterName: ParameterName.lineId, value: lineId)).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<CallCodeDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => CallCodeDto.fromJson(v)).toList();
    responseCallback(list);

  }
}