
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/DataField.dart';

class DataFieldRequest extends BaseRequest {
  Future<void> getList({
    int? collectionGroupId,
    required Function(List<DataFieldDto>) responseCallback,
    required BuildContext context,
  }) async {
    const Api api = Api.DataFieldGetList;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.collectionGroupId, value: collectionGroupId))
        .source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    List<DataFieldDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => DataFieldDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
