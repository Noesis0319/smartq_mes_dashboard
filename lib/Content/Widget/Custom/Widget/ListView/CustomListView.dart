
import 'package:flutter/material.dart';

import '../../Base/CustomWidget.dart';

class CustomListView extends CustomWidget{
  basic({required int itemCount, required NullableIndexedWidgetBuilder itemBuilder, bool? scrollAble}) {
    if (scrollAble != null && scrollAble == true) {
      return ListView.builder(itemCount: itemCount, itemBuilder: itemBuilder, shrinkWrap: true);
    } else {
      return ListView.builder(itemCount: itemCount, itemBuilder: itemBuilder);
    }
  }
}
