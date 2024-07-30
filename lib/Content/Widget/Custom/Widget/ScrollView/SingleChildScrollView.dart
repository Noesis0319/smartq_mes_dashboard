
import 'package:flutter/material.dart';

import '../../Base/CustomWidget.dart';

class CustomSingleChildScrollView extends CustomWidget{

  Widget hiddenScroll({required BuildContext context, required Widget child}) {
      return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(

          child: child,
        ));
  }

  Widget justPreventOverflow({required Widget child}) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: child,
    );
  }
}
