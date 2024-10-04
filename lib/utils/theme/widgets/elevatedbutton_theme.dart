import 'package:flutter/material.dart';

import '../../constants/sizes.dart';
import '../../styles/colors.dart';

class EventTMElevatedButtonTheme {
  EventTMElevatedButtonTheme._();

  static final ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EventTMColors.lightColorScheme.primary,
      backgroundColor: EventTMColors.lightColorScheme.surface,
      disabledForegroundColor: EventTMColors.lightColorScheme.onSurface,
      disabledBackgroundColor: EventTMColors.lightColorScheme.onSurfaceVariant,
      side: BorderSide(color: EventTMColors.lightColorScheme.primary),
      padding: const EdgeInsets.symmetric(vertical: EventTMSizes.buttonHeight),
      textStyle: TextStyle(fontSize: 16, color: EventTMColors.lightColorScheme.onPrimary, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(EventTMSizes.buttonRadius))
    )
  );

  static final ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: EventTMColors.darkColorScheme.surface,
          backgroundColor: EventTMColors.darkColorScheme.primary,
          disabledForegroundColor: EventTMColors.darkColorScheme.onSurface,
          disabledBackgroundColor: EventTMColors.darkColorScheme.onSurfaceVariant,
          side: BorderSide(color: EventTMColors.darkColorScheme.primary),
          padding: const EdgeInsets.symmetric(vertical: EventTMSizes.buttonHeight),
          textStyle: TextStyle(fontSize: 16, color: EventTMColors.darkColorScheme.onPrimary, fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(EventTMSizes.buttonRadius))
      )
  );
}