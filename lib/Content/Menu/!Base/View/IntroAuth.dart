
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Config/Path/AssetRoute.dart';
import '../../../../Resource/Color.dart';
import '../../../Controller/StateController.dart';
import '../../../Widget/Custom/Style/Dimen/Dimen.dart';
import '../ViewModel/ViewManager/IntroAuthViewManager.dart';

class IntroAuth extends BaseState<IntroAuthCreator> with IntroAuthViewManager{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.Surface.getColor(),
      child: Center(
          child: SvgPicture.asset(AssetImageRoute.SmartQMesDashboardLogo.route,
              width: ImageDimen.AuthIntroLogo.getSize(), height: ImageDimen.AuthIntroLogo.getSize())
      ),
    );
  }
}
