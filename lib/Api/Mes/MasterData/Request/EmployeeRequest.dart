import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/Employee.dart';

class EmployeeRequest extends BaseRequest{
  Future<void> employeeGetList({required int factoryId, required Function responseCallback, required BuildContext context})async{
    const Api api = Api.EmployeeGetList;
    final String parameter = (PathParameterHelper(api.getParameter())..setParameter(parameterName: ParameterName.factoryId, value: factoryId)).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<EmployeeDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => EmployeeDto.fromJson(v)).toList();
    responseCallback(list);
  }
}