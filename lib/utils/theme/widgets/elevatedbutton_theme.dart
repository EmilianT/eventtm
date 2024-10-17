import 'package:flutter/material.dart';

import '../../constants/sizes.dart';
import '../../styles/colors.dart';

class EventTMElevatedButtonTheme {
  EventTMElevatedButtonTheme._();

  static final TextStyle buttonTextStyle = TextStyle(
    fontSize: 16,
    color: EventTMColors.lightColorScheme.onPrimary,
    fontWeight: FontWeight.w600,
  );

  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(vertical: EventTMSizes.buttonHeight);

  static final ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EventTMColors.lightColorScheme.primary,
      backgroundColor: EventTMColors.lightColorScheme.surface,
      disabledForegroundColor: EventTMColors.lightColorScheme.onSurface,
      disabledBackgroundColor: EventTMColors.lightColorScheme.onSurfaceVariant,
      side: BorderSide(color: EventTMColors.lightColorScheme.primary),
      padding: buttonPadding,
      textStyle: buttonTextStyle,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(EventTMSizes.buttonRadius)),
    ),
  );

  static final ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EventTMColors.darkColorScheme.primary,
      backgroundColor: EventTMColors.darkColorScheme.surface,
      disabledForegroundColor: EventTMColors.darkColorScheme.onSurface,
      disabledBackgroundColor: EventTMColors.darkColorScheme.onSurfaceVariant,
      side: BorderSide(color: EventTMColors.darkColorScheme.primary),
      padding: buttonPadding,
      textStyle: buttonTextStyle.copyWith(color: EventTMColors.darkColorScheme.onPrimary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(EventTMSizes.buttonRadius)),
    ),
  );
}
