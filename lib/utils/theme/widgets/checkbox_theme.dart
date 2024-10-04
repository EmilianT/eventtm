import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class EventTMCheckboxTheme {
  EventTMCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(EventTMSizes.xs)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white70;
      } else {
        return Colors.black54;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return EventTMColors.lightColorScheme.primary;
      } else {
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(EventTMSizes.xs)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white70;
        } else {
          return Colors.black54;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return EventTMColors.lightColorScheme.primary;
        } else {
          return Colors.transparent;
        }
      })
  );
}