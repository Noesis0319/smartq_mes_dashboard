

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../../../Config/Path/AssetRoute.dart';
import '../../../../Resource/Color.dart';
import '../../../../Resource/ResourceType.dart';
import '../../../../Util/Provider/Authentication/AuthenticationProvider.dart';
import '../../../Controller/StateController.dart';
import '../../../Widget/Custom/Base/Controller.dart';
import '../../../Widget/Custom/Style/Dimen/Dimen.dart';
import '../ViewModel/AuthenticationViewManager.dart';

part 'CompanyAuth.dart';

part 'EmployeeAuth.dart';

class Authentication extends BaseState<AuthenticationCreator> with AuthenticationViewManager {

  @override
  Widget build(BuildContext context) {
    initLocalizationValue = EasyLocalization.of(context)!.locale;
    return Scaffold(
      body: FutureBuilder(
        future: initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              children: [
                SizedBox.expand(
                    child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: controller.value.size.width,
                    height: controller.value.size.height,
                    child: VideoPlayer(controller),
                  ),
                )),
                Center(
                  child: Container(
                      decoration: customDecoration.basic(
                        borderRadius: RadiusDimen.LittleRounded,
                        boxColor: CustomColor.Surface.getColor(),
                      ),
                      height: WidgetDimen.AuthenticationBoxHeight.getSize(),
                      width: WidgetDimen.AuthenticationBoxWidth.getSize(),
                      child: Custom.singleChildScrollView.hiddenScroll(
                          context: context,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Custom.dropDown.basic(
                                  items: items,
                           initValue: initLocalizationValue,
                                  selectedTextSize: TextDimen.DropDownMenuItem.getSize(),
                                  width: WidgetDimen.LocalizationDropDownWidth.getSize(),
                                  onSelected: (v) {
                                    EasyLocalization.of(context)!.setLocale(v);
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: EdgeDimen.AuthenticationHorizontal.getSize()),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: EdgeDimen.AuthenticationTop.getSize(),
                                    ),
                                    Image(
                                      image: AssetImage(AssetImageRoute.SmartQMesDashboardLogo.route),
                                      width: ImageDimen.AuthenticationLogoWidth.getSize(),
                                      height: ImageDimen.AuthenticationLogoHeight.getSize(),
                                    ),
                                    SizedBox(
                                      height: EdgeDimen.AuthenticationBetweenTitleContent.getSize(),
                                    ),
                                    Visibility(
                                      child: _companyAuth(),
                                      visible: shouldShowAuthCompany,
                                    ),
                                    Visibility(
                                      child: _employeeAuth(),
                                      visible: shouldShowAuthEmployee,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))),
                )
              ],
            );
          } else {

            return Center(
              child: CircularProgressIndicator(
                color: CustomColor.Primary.getColor(),
                strokeWidth: WidgetDimen.PageLoadingIndicatorStroke.getSize(),
                strokeCap: StrokeCap.round,
              ),
            );
          }
        },
      ),
    );
  }
}
