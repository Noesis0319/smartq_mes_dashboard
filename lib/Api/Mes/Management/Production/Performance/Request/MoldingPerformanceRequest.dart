import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/MoldingMachineOrderSituation.dart';
import '../Model/Dto/MoldingOrderSituation.dart';
class MoldingPerformanceRequest extends BaseRequest{

  /// 성형 설비 생산 현황 조회
  Future<void> getTodayMachineOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.MoldingPerformanceTodayMachineOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<MoldingMachineOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => MoldingMachineOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }

  /// 금일 작업중인 모든 성형 생산현황 조회
  Future<void> getTodayOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.MoldingPerformanceTodayOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<MoldingOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => MoldingOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }
}