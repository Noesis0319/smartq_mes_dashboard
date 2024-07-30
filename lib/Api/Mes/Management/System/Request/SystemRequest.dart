import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../Base/BaseRequest.dart';
import '../../../../Util/ApiManagement/Api.dart';
import '../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/ProcessTypeOptions.dart';
class SystemRequest extends BaseRequest {
  /// 공정 타입 옵션 조회
  Future<void> getProcessTypeOptions(
      {
      required Function responseCallback,
      required BuildContext context}) async {
    const Api api = Api.SystemGetProcessTypeOptions;
    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(
        api: api, parameter: parameter, body: "", context: context);
    Map<String, dynamic> data = responseParsing.getValue(responseBody: response.body);
    ProcessTypeOptionsDto dto = ProcessTypeOptionsDto.fromJson(data);

    responseCallback(dto);
  }
}
