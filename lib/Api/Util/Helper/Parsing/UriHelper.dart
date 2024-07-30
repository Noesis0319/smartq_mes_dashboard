
import 'package:flutter/foundation.dart';

import '../../ApiManagement/Api.dart';
import '../../ApiManagement/Controller.dart';
import '../../ApiManagement/RouteContext.dart';

class UriHelper {
  String makeUri({required Api api, required String parameter}) {
    bool isTestServer = kDebugMode;

    ApiController apiController = api.getApiController();
    ApiRouteContext apiRouteContext = apiController.getApiRouteContext();

    StringBuffer stringBuffer = StringBuffer();

    stringBuffer.write(apiRouteContext.getProtocol());
    stringBuffer.write(apiRouteContext.getHost(isTestServer: isTestServer));
    stringBuffer.write(apiRouteContext.getPort());
    stringBuffer.write(apiRouteContext.getPublicPath());
    stringBuffer.write(apiController.name);
    stringBuffer.write("/");
    stringBuffer.write(parameter);

    String uri = stringBuffer.toString();

    return uri;
  }
}
