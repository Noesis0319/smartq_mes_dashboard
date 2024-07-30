import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/ResponseCode.dart';

class ResponseCodeRequest extends BaseRequest{
  Future<void> responseCodeGetList({required int lineId, required Function responseCallback, required BuildContext context})async{
    const Api api = Api.ResponseCodeGetList;
    final String parameter = (PathParameterHelper(api.getParameter())..setParameter(parameterName: ParameterName.lineId, value: lineId)).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<ResponseCodeDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => ResponseCodeDto.fromJson(v)).toList();

    responseCallback(list);
  }
}