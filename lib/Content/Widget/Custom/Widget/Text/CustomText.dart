
import 'package:flutter/material.dart';

import '../../Base/CustomWidget.dart';
import '../../Style/Dimen/Dimen.dart';

class CustomText extends CustomWidget {

  /// 스타일이 개별적인 스타일 속성들(size, color ...) 보다 우선시됨,
  Text basic({required String? text, TextStyle? textStyle,TextAlign? textAlign, double? textSize, Color? textColor}) {
    return Text(
      text ?? "",
      style: textStyle ??
          customTextStyle.basic(
            textSize: textSize,
            textColor: textColor,
          ),

      /// Locale 텍스트 크기 조절
      /// (ex : 한국어, 영어 같은 경우 같은 사이즈더라도 높이가 다르게 되는데 아래 설정으로 그걸 조절해 동일하게 맞춤)
      strutStyle: StrutStyle(
        fontSize: getSafeTextSize(textSize: textStyle != null ? textStyle.fontSize : textSize),
        height: StrutHeightDimen.Basic.dimen,
      ),

      textAlign: textAlign,
    );
  }

  DefaultTextStyle withoutScaffold({
    required String? text,
    TextStyle? textStyle,
    double? textSize,
    Color? textColor,
  }) {
    return DefaultTextStyle(
      style: textStyle ??
          customTextStyle.basic(
            textSize: textSize,
            textColor: textColor,
          ),
      child: Text(text ?? ""),
    );
  }
}
