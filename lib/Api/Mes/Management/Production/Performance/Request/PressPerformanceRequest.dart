import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/PressMachineOrderSituation.dart';
import '../Model/Dto/PressOrderSituation.dart';
class PressPerformanceRequest extends BaseRequest{

  /// 프레스생산현황 조회
  Future<void> getTodayMachineOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.PressPerformanceTodayMachineOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PressMachineOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => PressMachineOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }

  /// 금일 작업중인 모든 프레스 생산현황 조회
  Future<void> getTodayOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.PressPerformanceTodayOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<PressOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => PressOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }
}