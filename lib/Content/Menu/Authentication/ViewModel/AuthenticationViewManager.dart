
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Util/Storage/Base/Controller/Controller.dart';
import 'package:video_player/video_player.dart';

import '../../../../Api/Base/AuthenticationRequest.dart';
import '../../../../Api/Base/Type/EmployeeAuthType.dart';
import '../../../../Api/Mes/MasterData/Model/Dto/Factory.dart';
import '../../../../Api/Mes/MasterData/Request/FactoryRequest.dart';
import '../../../../Config/Duration/Duration.dart';
import '../../../../Config/MainSetting/Locale.dart';
import '../../../../Config/Path/AssetRoute.dart';
import '../../../../Resource/ResourceType.dart';
import '../../../../Util/Provider/Authentication/AuthenticationProvider.dart';
import '../../../../Util/Storage/Type/StorageType.dart';
import '../../../Controller/MenuController.dart';
import '../../../Controller/StateController.dart';
import '../../../Widget/Controller.dart';
import '../../../Widget/Custom/Style/Dimen/Dimen.dart';
import '../../../Widget/Custom/Widget/SnackBar/CustomSnackBar.dart';

part 'AuthenticationRequestManager.dart';

mixin AuthenticationViewManager on BaseState<AuthenticationCreator> {
  final AuthenticationRequest authenticationRequest = AuthenticationRequest();
  final FactoryRequest factoryRequest = FactoryRequest();
  final FocusNode brnFocusNode = FocusNode();
  final FocusNode companyLoginFocusNode = FocusNode();
  final FocusNode companyPasswordFocusNode = FocusNode();
  final FocusNode factoryNameFocusNode = FocusNode();
  final FocusNode employeeLoginFocusNode = FocusNode();
  final FocusNode employeePasswordFocusNode = FocusNode();

  final List<DropdownMenuEntry> items = [
    DropdownMenuEntry(value: LocalizationSetting.Korean, label: ResourceType.Korean.getOriginalText()),
    DropdownMenuEntry(value: LocalizationSetting.English, label: ResourceType.English.getOriginalText()),
    DropdownMenuEntry(value: LocalizationSetting.Vietnamese, label: ResourceType.Vietnamese.getOriginalText()),
    DropdownMenuEntry(value: LocalizationSetting.Spanish, label: ResourceType.Spanish.getOriginalText()),
    DropdownMenuEntry(value: LocalizationSetting.Thai, label: ResourceType.Thai.getOriginalText()),
    DropdownMenuEntry(value: LocalizationSetting.Japanese, label: ResourceType.Japanese.getOriginalText()),
    DropdownMenuEntry(value: LocalizationSetting.Indonesian, label: ResourceType.Indonesian.getOriginalText()),
    DropdownMenuEntry(value: LocalizationSetting.SimplifiedChinese, label: ResourceType.SimplifiedChinese.getOriginalText()),
    DropdownMenuEntry(value: LocalizationSetting.TraditionalChinese, label: ResourceType.TraditionalChinese.getOriginalText()),
  ];


  // List<FactoryDto> factoryList = [];

  bool brnHasFocus = false;
  bool companyLoginHasFocus = false;
  bool companyPasswordHasFocus = false;
  bool factoryNameHasFocus = false;
  bool employeeLoginHasFocus = false;
  bool employeePasswordHasFocus = false;
  bool shouldAutoAuth = false;
  bool shouldSaveLoginId = false;
  bool shouldShowAuthCompany = true;
  bool shouldShowAuthEmployee = false;

  String? loginId;

  late VideoPlayerController controller;
  late Future<void> initializeVideoPlayerFuture;
  late TextEditingController? brnController;
  late TextEditingController? companyLoginIdController;
  late TextEditingController? companyPasswordController;
  late TextEditingController? employeeLoginIdController;
  late TextEditingController? employeePasswordController;
  late Locale initLocalizationValue;

  @override
  void initState() {
    super.initState();
    brnController = TextEditingController();
    companyLoginIdController = TextEditingController();
    companyPasswordController = TextEditingController();
    employeeLoginIdController = TextEditingController();
    employeePasswordController = TextEditingController();

    addListenerInFocusNode();

    controller = VideoPlayerController.asset(AssetVideoRoute.AuthBackground.route);
    initSettings();
    controller.setLooping(true);
    controller.setVolume(0);
    controller.play();
  }

  Future<void> initSettings() async {
    initializeVideoPlayerFuture = controller.initialize();

    ///자동 인증 체크
    shouldAutoAuth = await storage.getCompanyAutoAuth(storageType: StorageType.Local) ?? false;
    if (shouldAutoAuth && mounted) {
      changeShow(shouldShowCompanyAuth: false);
      getFactoryList(context: context, responseCallback: (list) async{
        context.read<AuthenticationProvider>().setCustomerFactoryList(factoryList: list);

        /// 아이디 저장 체크
        shouldSaveLoginId = await storage.getShouldSaveLoginId(storageType: StorageType.Local) ?? false;
        if(shouldSaveLoginId){
          loginId = await storage.getAuthLoginId(storageType: StorageType.Local);
          employeeLoginIdController!.text = loginId ?? "";

          context.read<AuthenticationProvider>().setShouldSaveId(value: shouldSaveLoginId);

          int? authFactoryId = await storage.getAuthFactoryId(storageType: StorageType.Local);
          if (authFactoryId != null && mounted) {
            context.read<AuthenticationProvider>().setCustomerFactoryById(authFactoryId: authFactoryId);
          }
        }
      },);


    }


  }


  void changeShow({required bool shouldShowCompanyAuth}) {
    setState(() {
      shouldShowAuthCompany = shouldShowCompanyAuth;
      shouldShowAuthEmployee = !shouldShowCompanyAuth;
    });
  }

  void addListenerInFocusNode() {
    brnFocusNode.addListener(
      () {
        setState(() {
          brnHasFocus = brnFocusNode.hasFocus;
        });
      },
    );

    companyLoginFocusNode.addListener(
      () {
        setState(() {
          companyLoginHasFocus = companyLoginFocusNode.hasFocus;
        });
      },
    );

    companyPasswordFocusNode.addListener(
      () {
        setState(() {
          companyPasswordHasFocus = companyPasswordFocusNode.hasFocus;
        });
      },
    );

    factoryNameFocusNode.addListener(
      () {
        setState(() {
          factoryNameHasFocus = factoryNameFocusNode.hasFocus;
        });
      },
    );
    employeeLoginFocusNode.addListener(
      () {
        setState(() {
          employeeLoginHasFocus = employeeLoginFocusNode.hasFocus;
        });
      },
    );

    employeePasswordFocusNode.addListener(
      () {
        setState(() {
          employeePasswordHasFocus = employeePasswordFocusNode.hasFocus;
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (brnController != null) brnController!.dispose();
    if (companyLoginIdController != null) companyLoginIdController!.dispose();
    if (companyPasswordController != null) companyPasswordController!.dispose();
    if (employeeLoginIdController != null) employeeLoginIdController!.dispose();
    if (employeePasswordController != null) employeePasswordController!.dispose();

    controller.dispose();
  }

  void onPressCompanyAuth({required BuildContext context}) {
    String brn = brnController!.text;
    String loginId = companyLoginIdController!.text;
    String password = companyPasswordController!.text;

    if (brn.isEmpty) {
      _showFailSnackBar(alarmTextType: AlarmTextType.AlertNotEnteredBrn);
      return;
    }
    if (loginId.isEmpty) {
      _showFailSnackBar(alarmTextType: AlarmTextType.IncorrectLoginData);
      return;
    }
    if (password.isEmpty) {
      _showFailSnackBar(alarmTextType: AlarmTextType.IncorrectLoginData);
      return;
    }

    sendAuthenticateRequest(
      employeeAuthType: EmployeeAuthType.Admin,
      brn: brn,
      loginId: loginId,
      password: password,
      context: context,
    );
  }

  void onPressEmployeeAuth({required BuildContext context}) async {

    String? brn = await storage.getAuthBrn(storageType: StorageType.Local);

    if (brn == null) {
      ///임시
      logger.error("brn is null");

      /// ++ Brn 이 없는 경우 처리
      /// ++ dialog 이후 업체인증 화면?

      return;
    }
    FactoryDto? factoryDto = context.read<AuthenticationProvider>().customerFactory;
    if (factoryDto == null) {
      _showFailSnackBar(alarmTextType: AlarmTextType.AlertNotSelectedFactoryName);
      return;
    }

    String loginId = employeeLoginIdController!.text;
    if (loginId.isEmpty) {
      _showFailSnackBar(alarmTextType: AlarmTextType.IncorrectLoginData);
      return;
    }

    String password = employeePasswordController!.text;
    if (password.isEmpty) {
      _showFailSnackBar(alarmTextType: AlarmTextType.IncorrectLoginData);
      return;
    }
    sendLoginRequest(brn: brn, loginId: loginId, password: password,factoryId: factoryDto.id, context: context);
  }
test(){

}

  _showFailSnackBar({required AlarmTextType alarmTextType}) {
    Custom.snackBar.show(
        context: context,
        snackBarType: SnackBarType.Fail,
        message: alarmTextType.getText(),
        duration: DurationConstant.InputError.millisecond,
        horizontalMargin: MediaQuery.of(context).size.width * RatioDimen.AuthErrorSnackBarHorizontalMargin.dimen,
        bottomMargin: EdgeDimen.SnackBarOffsetToBottomInWeb.getSize());
  }

  void onChangeAutoAuth({bool? value}) {
    context.read<AuthenticationProvider>().changeAutoAuth(value: value);
  }

  void onChangeSaveId({bool? value}) {
    context.read<AuthenticationProvider>().setShouldSaveId(value: value);
  }
}
