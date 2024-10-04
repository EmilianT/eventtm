import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class EventTMOutlinedButtonTheme {
  EventTMOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: EventTMColors.lightColorScheme.onSurface,
      side: BorderSide(color: EventTMColors.lightColorScheme.outline),
      textStyle: TextStyle(fontSize: 16, color: EventTMColors.lightColorScheme.onSurface, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: EventTMSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(EventTMSizes.buttonRadius))
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: EventTMColors.darkColorScheme.onSurface,
        side: BorderSide(color: EventTMColors.darkColorScheme.outline),
        textStyle: TextStyle(fontSize: 16, color: EventTMColors.darkColorScheme.onSurface, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(vertical: EventTMSizes.buttonHeight, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(EventTMSizes.buttonRadius))
    ),
  );
}