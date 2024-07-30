import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../Base/BaseRequest.dart';
import '../../../Util/ApiManagement/Api.dart';
import '../../../Util/ApiManagement/AuthType.dart';
import '../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/Factory.dart';

class FactoryRequest extends BaseRequest{
  Future<void> get({required String id, required Function responseCallback, required BuildContext context}) async{
    const Api api = Api.FactoryGet;
    final String parameter = (PathParameterHelper(api.getParameter())..setParameter(parameterName: ParameterName.factoryId, value: id)).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    Map<String, dynamic> data = responseParsing.getValue(responseBody: response.body);
    FactoryDto dto = FactoryDto.fromJson(data);
    responseCallback(dto);
  }

  Future<void> getList({required Function responseCallback, required BuildContext context}) async{
    const Api api = Api.FactoryGetList;
    final String parameter = api.getParameter();

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);

    List<FactoryDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => FactoryDto.fromJson(v)).toList();
    responseCallback(list);
  }

  Future<void> getListCompanyAuth({required Function responseCallback, required BuildContext context}) async{
    const Api api = Api.FactoryGetListAuth;
    final String parameter = api.getParameter();

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context, authType: AuthType.Company);

    List<FactoryDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => FactoryDto.fromJson(v)).toList();
    responseCallback(list);
  }
}