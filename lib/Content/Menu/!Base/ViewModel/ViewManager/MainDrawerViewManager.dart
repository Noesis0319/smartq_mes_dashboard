//
// mixin MainDrawerViewManager on BaseState<MainDrawerCreator>{
//   String? _name;
//   String? _factoryName;
//   String? _employeeName;
//   String? _employeeCode;
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchData();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       FocusScope.of(context).requestFocus(FocusNode());
//     });
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   Future<void> _fetchData() async {
//     String name = await shared.getCompanyName()?? "";
//     String factoryName = await shared.getFactoryName() ?? "";
//     String employeeName = await shared.getEmployeeName() ?? "";
//     String employeeCode = await shared.getEmployeeCode() ?? "";
//
//     setState(() {
//       _name = name;
//       _factoryName = factoryName;
//       _employeeName = employeeName;
//       _employeeCode = employeeCode;
//     });
//   }
//
//   void onPressProductionCallMenu() {
//     Menu.productionCall.pushNamed(context: context);
//   }
//   void onPressErrorMenu() {
//     Menu.errorAlert.pushNamed(context: context);
//   }
//
//   void onPressSettingMenu() {
//     Menu.setting.pushNamed(context: context);
//   }
//
//   void onPressUpdateMenu() {
//     AppController.mesMobile.download();
//   }
//
//   void onPressRemoteSupportMenu() async {
//     bool isInstalled = await AppController.anyDeskCustom.isInstalled();
//     AppController.anyDeskCustom.open(isInstalled);
//   }
//
//   void onPressLogoutMenu() {
//     Custom.dialog.prompt(
//       title: ResourceType.warning.getText(),
//         buildContext: context, content: AlarmTextType.alertLogOut.getText(), confirmCallback: () {
//       context.read<LoginMainProvider>().setChecked(check: false);
//       shared.setEmployeeAutoAuth(allowAutoLogin: false);
//       Menu.authEmployee.pushNamed(context: context);
//         },);
//
//   }
//
//   void onPressCallMenu() {
//     Custom.dialog.basic(buildContext: context, content: SizedBox(
//       width: double.maxFinite,
//       child: Menu.sendCall.instance(),
//     ),
//     );
//   }
//
//   void onPressAddErrorMenu() {
//     Custom.dialog.basic(buildContext: context, content: SizedBox(
//       width: double.maxFinite,
//       child: Menu.sendError.instance(),
//     ),
//     );
//   }
//
//   get name => _name ?? "";
//
//   get factoryName => _factoryName ?? "";
//
//   get employeeName => _employeeName ?? "";
//
//   get employeeCode => _employeeCode ?? "";
// }
