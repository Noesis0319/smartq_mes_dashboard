import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../Util/Storage/Base/Controller/Controller.dart';

import '../../Util/Storage/Type/StorageType.dart';
import '../Util/ApiManagement/Api.dart';
import '../Util/ApiManagement/AuthType.dart';
import '../Util/ApiManagement/RequestController.dart';
import 'AuthenticationRequest.dart';

class BaseRequest extends RequestController {
  AuthenticationRequest authenticationRequest = AuthenticationRequest();

  Future<http.Response> sendBaseRequest(
      {required Api api,
      required String parameter,
      required String body,
      required BuildContext context,
      AuthType? authType}) async {
    bool isValidToken = await _isValidToken();

    if (!isValidToken) {
      authenticationRequest.refreshToken(responseCallback: (_) {}, context: context);
    }
    return await sendRequest(
      api: api,
      body: body,
      parameter: parameter,
      context: context,
      authType: authType,
    );
  }

  Future<bool> _isValidToken() async {
    int? timeStamp = await storage.getValidAuthenticationTimeStamp(storageType: StorageType.Local);
    if (timeStamp == null) return false;
    bool isValidToken = DateTime.now().millisecondsSinceEpoch < timeStamp;
    return isValidToken;
  }
}
