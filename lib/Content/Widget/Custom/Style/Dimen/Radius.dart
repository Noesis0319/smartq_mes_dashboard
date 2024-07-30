
import 'package:flutter/material.dart';

import '../../Base/CustomStyle.dart';
import 'Dimen.dart';

class CustomRadius extends CustomStyle {
  BorderRadius none() {
    return BorderRadius.circular(0);
  }

  BorderRadius basic({RadiusDimen? radius, RadiusDimen? safeDimen}) {
    return BorderRadius.circular(getSafeRadius(radiusDimen: radius, safeRadiusDimen: safeDimen));
  }

  BorderRadius rounded() {
    return BorderRadius.circular(RadiusDimen.Rounded.dimen);
  }
}
