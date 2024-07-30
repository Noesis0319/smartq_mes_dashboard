import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../../EasyFactory/Model/Dto/DataField.dart';

class ItemRequest extends BaseRequest {
  Future<void> getList(
      {required int categoryId,
      required int majorGroupId,
      required int groupId,
      required String processType,
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.ItemGetList;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.categoryId, value: categoryId)
          ..setParameter(parameterName: ParameterName.majorGroupId, value: majorGroupId)
          ..setParameter(parameterName: ParameterName.groupId, value: groupId)
          ..setParameter(parameterName: ParameterName.processType, value: processType))
        .source;

    http.Response response = await sendRequest(api: api, parameter: parameter, body: "", context: context);

    List<DataFieldDto> list =
        responseParsing.getValueList(responseBody: response.body).map((v) => DataFieldDto.fromJson(v)).toList();
    responseCallback(list);
  }
}
