import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../../../../Base/BaseRequest.dart';
import '../../../../../Util/ApiManagement/Api.dart';
import '../../../../../Util/Helper/Network/PathParameterHelper.dart';
import '../Model/Dto/AssemblyMachineOrderSituation.dart';
import '../Model/Dto/AssemblyOrderSituation.dart';
class AssemblyPerformanceRequest extends BaseRequest{

  /// 조립생산현황 조회
  Future<void> getTodayMachineOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.AssemblyPerformanceTodayMachineOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;


    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<AssemblyMachineOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => AssemblyMachineOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }

  /// 금일 작업중인 모든 조립 생산현황 조회
  Future<void> getTodayOrderSituations({required Function responseCallback, required BuildContext context})async{
    const Api api = Api.AssemblyPerformanceTodayOrderSituation;
    final String parameter = (PathParameterHelper(api.getParameter())).source;

    http.Response response = await sendBaseRequest(api: api, parameter: parameter, body: "", context: context);
    List<AssemblyOrderSituationDto> list = responseParsing.getValueList(responseBody: response.body).map((v) => AssemblyOrderSituationDto.fromJson(v)).toList();
    responseCallback(list);
  }

}