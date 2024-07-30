enum ApiRouteContext {
  Mes("http://", "mes1.smartqapis.com", ":5000/", "api/","test.smartqapis.com"),
  EasyFactory("http://", "mes1.smartqapis.com", ":5000/", "api/easyFactory/", "test.smartqapis.com"),
  Scada("http://", "mes1.smartqapis.com", ":5000/", "api/Scada/", "test.smartqapis.com"),
  Admin("http://", "admin1.smartqapis.com", ":5001/", "api/", "test.smartqapis.com"),
  ;
  const ApiRouteContext(
      this._protocol, this._host, this._port, this._publicPath, this._testServerHost);

  final String _protocol;
  final String _host;
  final String _port;
  final String _publicPath;
  final String _testServerHost;

  String getProtocol() => _protocol;

  String getHost({required isTestServer}) => isTestServer ? _testServerHost :_host;

  String getPort() => _port;

  String getPublicPath() => _publicPath;

}
