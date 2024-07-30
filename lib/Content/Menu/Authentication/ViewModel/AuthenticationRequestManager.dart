part of 'AuthenticationViewManager.dart';

const int ok = 200;

extension AuthenticationRequestManager on AuthenticationViewManager  {
  Future<void> sendAuthenticateRequest(
      {required String brn,
      required String loginId,
      required String password,
      required BuildContext context,
      required EmployeeAuthType employeeAuthType}) async {
    FocusManager.instance.primaryFocus!.unfocus();
    authenticationRequest.createCompanyToken(
        brn: brn,
        context: context,
        responseCallback: (response) {
          authenticationRequest.createEmployeeToken(
              loginId: loginId,
              password: password,
              context: context,
              employeeAuthType: EmployeeAuthType.Admin,
              responseCallback: (response) {
                authenticationRequest.getCompanyPermission(
                    brn: brn,
                    context: context,
                    responseCallback: (response) {
                      bool isSuccess = response.statusCode == ok;
                      if (isSuccess) {
                        employeeLoginIdController!.text = loginId;
                        bool shouldAutoAuth = context.read<AuthenticationProvider>().shouldAutoAuth ?? false;
                        if (shouldAutoAuth) {
                          storage.setCompanyAutoAuth(shouldAutoAuth: true, storageType: StorageType.Local);
                        }

                        ///업체권한 처리
                        factoryRequest.getListCompanyAuth(context: context,responseCallback: (List<FactoryDto> list) {
                          context.read<AuthenticationProvider>().setCustomerFactoryList(factoryList: list);
                          changeShow(shouldShowCompanyAuth: false);
                        });
                      }
                    });
              });
        });
  }

  Future<void> sendLoginRequest({
    required String brn,
    required String loginId,
    required String password,
    required int factoryId,
    required BuildContext context,
  }) async {
    FocusManager.instance.primaryFocus!.unfocus();
    authenticationRequest.createCompanyToken(
        brn: brn,
        context: context,
        responseCallback: (_) => authenticationRequest.createEmployeeToken(
              loginId: loginId,
              password: password,
              context: context,
              employeeAuthType: EmployeeAuthType.Manager,
              responseCallback: (response) {
                bool isSuccess = response.statusCode == ok;
                if (isSuccess) {
                  bool shouldSaveId = context.read<AuthenticationProvider>().shouldSaveId?? false;

                  if(shouldSaveId){
                    storage.setAuthLoginId(loginId: loginId, storageType: StorageType.Local);
                    storage.setAuthFactoryId(factoryId: factoryId, storageType: StorageType.Local);
                    storage.setShouldSaveLoginId(shouldSaveLoginId: true,storageType: StorageType.Local);
                  }
                  Menu.StandardDashboard.pushReplacementNamed(context: context);
                }
              },
            ));
  }

  Future<void> getFactoryList({required BuildContext context, required Function(List<FactoryDto> list) responseCallback}) async{

    await factoryRequest.getListCompanyAuth(context: context,responseCallback: (List<FactoryDto> list) => responseCallback(list));
  }
}
