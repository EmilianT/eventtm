import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMChipTheme {
  EventTMChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: EventTMColors.lightColorScheme.onSurfaceVariant,
    labelStyle: TextStyle(color: EventTMColors.lightColorScheme.secondary),
    selectedColor: EventTMColors.lightColorScheme.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: EventTMColors.lightColorScheme.onPrimary
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: EventTMColors.darkColorScheme.onSurfaceVariant,
      labelStyle: TextStyle(color: EventTMColors.darkColorScheme.secondary),
      selectedColor: EventTMColors.darkColorScheme.primary,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      checkmarkColor: EventTMColors.darkColorScheme.onPrimary
  );
}