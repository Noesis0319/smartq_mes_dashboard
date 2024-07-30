import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/Line.dart';
class LinesRequest extends BaseRequest {
  Future<void> get({required int id, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.LinesGet;
    final String parameter =
        (PathParameterHelper(api.getParameter())..setParameter(parameterName: ParameterName.id, value: id)).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    Map<String, dynamic> data = responseParsing.getValue(responseBody: response.body);
    LineDto dto = LineDto.fromJson(data);
    responseCallback(dto);
  }

  Future<void> getLineList({int? factoryId, required Function responseCallback, required BuildContext context}) async {
    const Api api = Api.LinesGetList;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.factoryId, value: factoryId))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    List<LineDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => LineDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
