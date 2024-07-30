import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/HandworkMachineOrderSituation.dart';
import '../Model/Dto/HandworkOrderSituation.dart';
class HandworkPerformanceRequest extends BaseRequest{

  /// 수작업생산현황 조회
  Future<void> getTodayMachineOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.HandworkPerformanceTodayMachineOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<HandworkMachineOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => HandworkMachineOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }

  /// 금일 작업중인 모든 수작업 생산현황 조회
  Future<void> getTodayOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.HandworkPerformanceTodayOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<HandworkOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => HandworkOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }
}