
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '/Api/Util/Helper/Parsing/ApiJsonKey.dart';
import '../../Util/Storage/Base/Controller/Controller.dart';

import '../../Config/Duration/Duration.dart';
import '../../Resource/ResourceType.dart';
import '../../Util/Storage/Type/StorageType.dart';
import '../Mes/MasterData/Model/Dto/Employee.dart';
import '../Util/ApiManagement/Api.dart';
import '../Util/ApiManagement/RequestController.dart';
import '../Util/Helper/Auth/Permission.dart';
import '../Util/Helper/Network/PathParameterHelper.dart';
import 'Type/EmployeeAuthType.dart';

class AuthenticationRequest extends RequestController {
  Future<void> createCompanyToken({
    required String brn,
    required BuildContext context,
    required Function(http.Response) responseCallback,
    bool showErrorDialog = true,
  }) async {
    const Api api = Api.Authenticate;
    final String parameter = api.getParameter();

    final Map<String, dynamic> requestBody = {
      ApiJsonKey.Brn.key : brn,
    };
    final String body = json.encode(requestBody);

    http.Response response = await sendAuthRequest(
      api: api,
      body: body,
      context: context,
      parameter: parameter,
      isErrorDialogShow: showErrorDialog,
    );

    String code = responseParsing.getValueByKey(responseBody: response.body, key: ApiJsonKey.Code.key);
    String name = responseParsing.getValueByKey(responseBody: response.body, key: ApiJsonKey.Name.key);
    String token = responseParsing.getValueByKey(responseBody: response.body, key: ApiJsonKey.Token.key);

    _writeAuthenticationInfo(
        brn: brn, code: code, name: name, token: token);

    responseCallback(response);
  }

  Future<void> createEmployeeToken({
    required String loginId,
    required String password,
    required BuildContext context,
    required EmployeeAuthType employeeAuthType,
    required Function(http.Response) responseCallback,
    bool showErrorDialog = true,
  }) async {
    const Api api = Api.Login;
    String parameter = api.getParameter();
    final Map<String, String> requestBody = {
      ApiJsonKey.LoginId.key: loginId,
      ApiJsonKey.Password.key: password,
    };
    final String body = json.encode(requestBody);
    http.Response response = await sendAuthRequest(
      api: api,
      body: body,
      parameter: parameter,
      context: context,
      isErrorDialogShow: showErrorDialog,
    );


    String token = responseParsing.getData(responseBody: response.body).toString();

    if(useEmployeeToken){
      _saveEmployeeTokenInfo(employeeAuthType: employeeAuthType, employeeToken: token);
    }

    responseCallback(response);
  }


  _saveEmployeeTokenInfo({required EmployeeAuthType employeeAuthType,required String employeeToken}){
    StorageType storageType = platformHelper.getPlatformDefaultStorageType();

    switch (employeeAuthType) {
      case EmployeeAuthType.Admin:
        storage.setAuthCompanyAdminToken(
          token: employeeToken,
          storageType: storageType,
        );
      case EmployeeAuthType.Manager:
        storage.setAuthEmployeeToken(
          token: employeeToken,
          storageType: storageType,
        );
    }

    storage.setValidAuthenticationTimeStamp(
      validTime: _getValidTime(),
      storageType: storageType,
    );
  }

  Future<void> refreshToken({
    required Function(http.Response) responseCallback,
    required BuildContext context,
    bool shouldSaveEmployeeToken = true,
  }) async {
    StorageType storageType = platformHelper.getPlatformDefaultStorageType();

    String? brn = await storage.getAuthBrn(
      storageType: storageType,
    );
    String? loginId = await storage.getAuthLoginId(
      storageType: storageType,
    );
    String? password = await storage.getAuthPassword(
      storageType: storageType,
    );

    if (!context.mounted) throw Exception(SystemMessage.NotMountedContext);

    if (brn == null || loginId == null || password == null) return;
    createCompanyToken(
        brn: brn,
        context: context,
        responseCallback: (companyToken) => createEmployeeToken(
            loginId: loginId,
            password: password,
            context: context,
            employeeAuthType: EmployeeAuthType.Admin,
            responseCallback: (adminToken) => createEmployeeToken(
                loginId: loginId,
                password: password,
                context: context,
                employeeAuthType: EmployeeAuthType.Manager,
                responseCallback: (managerToken) => responseCallback(managerToken))));
  }

  Future<void> getByLoginId({
    required String loginId,
    required Function responseCallback,
    required BuildContext context,
    bool showErrorDialog = true,
  }) async {
    const Api api = Api.EmployeeGetByeLoginId;
    final String parameter = (PathParameterHelper(api.getParameter())
          ..setParameter(parameterName: ParameterName.loginId, value: loginId))
        .source;

    http.Response response = await sendAuthRequest(
      api: api,
      body: "",
      parameter: parameter,
      context: context,
      isErrorDialogShow: showErrorDialog,
    );

    Map<String, dynamic> data = responseParsing.getValue(responseBody: response.body);
    EmployeeDto employeeDto = EmployeeDto.fromJson(data);

    PermissionHelper.setEmployeePermissionList(employeeDto.permissions);

    storage.setLoggedInEmployee(
      employeeDto: employeeDto,
    );

    if (context.mounted) {}

    responseCallback(employeeDto);
  }

  Future<void> getCompanyPermission({
    required String brn,
    required Function responseCallback,
    required BuildContext context,
    bool showErrorDialog = true,
  }) async {
    const Api api = Api.CompaniesPermissions;
    final String parameter =
        (PathParameterHelper(api.getParameter())..setParameter(parameterName: ParameterName.brn, value: brn)).source;

    http.Response response = await sendAuthRequest(
      api: api,
      body: "",
      parameter: parameter,
      context: context,
      isErrorDialogShow: showErrorDialog,
    );

    // Map<String, dynamic> data = responseParsing.getValue(responseBody: response.body);

    // CompanyPermissionDto companyPermissionDto = CompanyPermissionDto.fromJson(data);
    responseCallback(response);
  }


  _writeAuthenticationInfo(
      {required String brn,
      required String code,
      required String name,
      required String token,
      }) {
    storage.setAuthBrn(
      brn: brn,
      storageType:  StorageType.Local,
    );
    storage.setAuthCompanyCode(
      code: code,
      storageType:  StorageType.Local,
    );
    storage.setAuthCompanyName(
      name: name,
      storageType:  StorageType.Local,
    );
    storage.setAuthCompanyToken(
      token: token,
      storageType:  StorageType.Local,
    );
    storage.setValidAuthenticationTimeStamp(
      validTime: _getValidTime(),
      storageType:  StorageType.Local,
    );
  }

  int _getValidTime(){
    return DurationConstant.OneHour.millisecond * validHours;
  }
}
