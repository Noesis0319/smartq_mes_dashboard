part of '../Controller.dart';

extension AuthenticationShared on StorageController {
  ///set

  void setAuthBrn({
    required String brn,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.Brn,
      value: brn,
      storageType: storageType,
    );
  }

  void setCompanyAutoAuth({
    required shouldAutoAuth,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.CompanyAutoAuth,
      value: shouldAutoAuth,
      storageType: storageType,
    );
  }

  void setAuthCompanyCode({
    required String code,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.CompanyCode,
      value: code,
      storageType: storageType,
    );
  }

  void setAuthCompanyName({
    required String name,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.CompanyName,
      value: name,
      storageType: storageType,
    );
  }

  void setAuthCompanyToken({
    required String token,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.CompanyToken,
      value: token,
      storageType: storageType,
    );
  }

  void setAuthCompanyAdminToken({
    required String token,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.CompanyAdminToken,
      value: token,
      storageType: storageType,
    );
  }

  void setValidAuthenticationTimeStamp({
    required int validTime,
    required StorageType storageType,
  }) {
    int timeStamp = DateTime.now().millisecondsSinceEpoch + validTime;
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.AuthTimeStamp,
      value: timeStamp,
      storageType: storageType,
    );
  }

  void setLoginData({
    required String brn,
    required String loginId,
    required String password,
  }) {
    StorageType storageType = _platformHelper.getPlatformDefaultStorageType();
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.Brn,
      value: brn,
      storageType: StorageType.Local,
    );

    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.LoginId,
      value: loginId,
      storageType: storageType,
    );
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.Password,
      value: password,
      storageType: storageType,
    );
  }


  void setAuthFactoryId({
    required int factoryId,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.FactoryId,
      value: factoryId,
      storageType: storageType,
    );
  }

  void setAuthFactoryCode({
    required String factoryCode,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.FactoryCode,
      value: factoryCode,
      storageType: storageType,
    );
  }

  void setAuthFactoryName({
    required String factoryName,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.FactoryName,
      value: factoryName,
      storageType: storageType,
    );
  }

  void setAuthFactoryData({required int factoryId, required String factoryCode , required String factoryName, required StorageType storageType}){
    setAuthFactoryId(factoryId: factoryId, storageType: storageType);
    setAuthFactoryCode(factoryCode: factoryCode, storageType: storageType);
    setAuthFactoryName(factoryName: factoryName, storageType: storageType);
  }

  void setAuthEmployeeId({
    required int employeeId,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.EmployeeId,
      value: employeeId,
      storageType: storageType,
    );
  }

  void setAuthEmployeeName({
    required String employeeName,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.EmployeeName,
      value: employeeName,
      storageType: storageType,
    );
  }

  void setAuthEmployeeCode({
    required String employeeCode,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.EmployeeCode,
      value: employeeCode,
      storageType: storageType,
    );
  }

  void setAuthEmployeeToken({
    required String token,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.EmployeeToken,
      value: token,
      storageType: storageType,
    );
  }

  void setAuthEmployeeAutoAuth({
    required bool allowAutoLogin,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.EmployeeAutoAuth,
      value: allowAutoLogin,
      storageType: storageType,
    );
  }

  void setLoggedInEmployee({
    required EmployeeDto employeeDto,
  }) {
    StorageType storageType = _platformHelper.getPlatformDefaultStorageType();

    setAuthFactoryId(
      factoryId: employeeDto.factoryId,
      storageType: storageType,
    );
    setAuthFactoryCode(
      factoryCode: employeeDto.factoryCode,
      storageType: storageType,
    );
    setAuthFactoryName(
      factoryName: employeeDto.factoryName,
      storageType: storageType,
    );
    setAuthEmployeeId(
      employeeId: employeeDto.id,
      storageType: storageType,
    );
    setAuthEmployeeCode(
      employeeCode: employeeDto.code,
      storageType: storageType,
    );
    setAuthEmployeeName(
      employeeName: employeeDto.name,
      storageType: storageType,
    );
  }

  void setAuthLoginId({
    required String loginId,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.LoginId,
      value: loginId,
      storageType: storageType,
    );
  }

  void setShouldSaveLoginId({
    required bool shouldSaveLoginId,
    required StorageType storageType,
  }) {
    setData(
      sharedRoute: StorageRoute.Authentication,
      sharedKey: StorageKey.shouldSaveLoginId,
      value: shouldSaveLoginId,
      storageType: storageType,
    );
  }

  ///get

  Future<EmployeeDto> getAuthEmployeeDto({
    required StorageType storageType,
  }) async {
    int? factoryId = await getAuthFactoryId(
      storageType: storageType,
    );
    String? factoryName = await getAuthFactoryName(
      storageType: storageType,
    );
    int? employeeId = await getAuthEmployeeId(
      storageType: storageType,
    );
    String? employeeName = await getAuthEmployeeName(
      storageType: storageType,
    );
    String? employeeCode = await getAuthEmployeeCode(
      storageType: storageType,
    );

    EmployeeDto employeeDto = EmployeeDto(employeeId, factoryId, null, factoryName, null, null, null, null,
        employeeCode, employeeName, null, null, null, null, null, null, null, null, null, null, null, null, null);
    return employeeDto;
  }

  Future<bool?> getCompanyAutoAuth({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.CompanyAutoAuth,
      primitiveType: PrimitiveType.Bool,
      storageType: storageType,
    );
  }

  Future<String?> getAuthCompanyCode({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.CompanyCode,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<String?> getAuthCompanyName({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.CompanyName,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<String?> getAuthCompanyToken({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.CompanyToken,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<String?> getAuthCompanyAdminToken({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.CompanyAdminToken,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<String?> getAuthBrn({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.Brn,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<String?> getAuthLoginId({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.LoginId,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<String?> getAuthPassword({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.Password,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<int?> getAuthFactoryId({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.FactoryId,
      primitiveType: PrimitiveType.Int,
      storageType: storageType,
    );
  }

  Future<String?> getAuthFactoryName({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.FactoryName,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<String?> getAuthFactoryCode({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.FactoryCode,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<int?> getAuthEmployeeId({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.EmployeeId,
      primitiveType: PrimitiveType.Int,
      storageType: storageType,
    );
  }

  Future<String?> getAuthEmployeeName({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.EmployeeName,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<String?> getAuthEmployeeCode({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.EmployeeCode,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<String?> getAuthEmployeeToken({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.EmployeeToken,
      primitiveType: PrimitiveType.String,
      storageType: storageType,
    );
  }

  Future<int?> getValidAuthenticationTimeStamp({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.AuthTimeStamp,
      primitiveType: PrimitiveType.Int,
      storageType: storageType,
    );
  }

  Future<bool?> getEmployeeAutoAuth({
    required StorageType storageType,
  }) async {
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.EmployeeAutoAuth,
      primitiveType: PrimitiveType.Bool,
      storageType: storageType,
    );
  }

  Future<bool?> getShouldSaveLoginId({
    required StorageType storageType,
  }) async{
    return await getData(
      storageRoute: StorageRoute.Authentication,
      storageKey: StorageKey.shouldSaveLoginId,
      primitiveType: PrimitiveType.Bool,
      storageType: storageType,
    );
  }
}
