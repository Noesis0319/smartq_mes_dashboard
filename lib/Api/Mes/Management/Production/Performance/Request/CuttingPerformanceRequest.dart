import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/CuttingMachineOrderSituation.dart';
import '../Model/Dto/CuttingOrderSituation.dart';
class CuttingPerformanceRequest extends BaseRequest{

  /// 절삭 설비 생산 현황 조회
  Future<void> getTodayMachineOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.CuttingPerformanceTodayMachineOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<CuttingMachineOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => CuttingMachineOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }

  /// 금일 작업중인 모든 절삭 생산현황 조회
  Future<void> getTodayOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.CuttingPerformanceTodayOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<CuttingOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => CuttingOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }
}