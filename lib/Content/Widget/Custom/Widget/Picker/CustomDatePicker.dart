

import 'package:flutter/material.dart';

import '../../../../../Resource/Color.dart';
import '../../Base/CustomWidget.dart';

const int _lastDate = 3650;

class CustomDatePicker extends CustomWidget{
  basic({
    required BuildContext context,
    int lastDate = _lastDate,
  }) async {
    DateTime? selectedDate = await showDatePicker(
        context: context, firstDate: earliestDate, lastDate: DateTime.now().add(Duration(days: lastDate)));
    return selectedDate;
  }

  range({
    required BuildContext context,
    int lastDate = _lastDate,
  }) async {
    DateTimeRange? selectedDateRange = await showDateRangePicker(
        context: context,
        firstDate: earliestDate,
        lastDate: DateTime.now().add(Duration(days: lastDate)),
        builder: (context, child) => Theme(
              data: ThemeData.light(useMaterial3: false).copyWith(
                colorScheme: ColorScheme.light(
                  primary: CustomColor.Primary.getColor(),
                  secondary: CustomColor.SecondaryContainer.getColor(),
                  surface: CustomColor.Surface.getColor(),
                ),
              ),
              child: child!,
            ));
    return selectedDateRange;
  }
}
