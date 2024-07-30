
/// "경로(Route)" + "데이터(Key)"
/// productionCall + lineId = o
/// employee + id = x
enum StorageKey {
  AdminToken("AdminToken"),
  AllowAutoLogin('AllowAutoLogin'),
  AuthTimeStamp('ValidAuthenticationTimeStamp'),
  shouldSaveLoginId('ShouldSaveLoginId'),

  Brn('Brn'),
  Code("Code"),

  ///Company
  CompanyAutoAuth('CompanyAutoAuth'),
  CompanyCode('CompanyCode'),
  CompanyName('CompanyName'),
  CompanyToken('CompanyToken'),
  CompanyAdminToken('CompanyAdminToken'),

  ///Customer
  CustomerFactoryId("CustomerFactoryId"),
  CustomerFactoryCode("CustomerFactoryCode"),
  CustomerFactoryName("CustomerFactoryName"),

  DateOffset("DateOffset"),
  EmployeeAutoAuth('EmployeeAutoAuth'),
  EmployeeCode('EmployeeCode'),
  EmployeeId('EmployeeId'),
  EmployeeName('EmployeeName'),
  EmployeeToken('EmployeeToken'),
  FactoryCode("FactoryCode"),
  FactoryId("FactoryId"),
  FactoryName("FactoryName"),
  Id("Id"),

  LineId("LineId"),
  LineName("LineName"),
  LoginId('LoginId'),
  MachineId("MachineId"),
  MachineName("MachineName"),
  Name("Name"),
  Password('Password'),
  ThemeSeedColor('ThemeSeedColor'),
  Token("Token"),
  ;

  const StorageKey(this.key);

  final String key;


}

///Route 는 쓰일 장소를 구분
///ex : ProductionManage(Route) + MachineId(Key) ,
///      SalesManagement(Route) + MachineId(Key)
///
enum StorageRoute{
  Authentication(routeName: "Authentication"),
  Employee(routeName: "Employee"),
  Error(routeName: "Error"),
  ErrorAlert(routeName: "ErrorAlert"),
  Factory(routeName: "Factory"),
  ProductionCall(routeName: "ProductionCall"),
  None(routeName: ""),
  ;

  const StorageRoute({required this.routeName});

  final String routeName;
}