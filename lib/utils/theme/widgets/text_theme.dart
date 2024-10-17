import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMTextTheme {
  EventTMTextTheme._();

  static final TextTheme lightTextTheme = _buildTextTheme(EventTMColors.lightColorScheme);
  static final TextTheme darkTextTheme = _buildTextTheme(EventTMColors.darkColorScheme);

  static TextTheme _buildTextTheme(ColorScheme colorScheme) {
    return TextTheme(
      headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: colorScheme.primary),
      headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: colorScheme.primary),
      headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: colorScheme.primary),
      titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: colorScheme.primary),
      titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: colorScheme.primary),
      titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: colorScheme.primary),
      bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: colorScheme.primary),
      bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: colorScheme.primary),
      bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: colorScheme.primary.withOpacity(0.5)),
      labelLarge: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: colorScheme.primary),
      labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: colorScheme.primary.withOpacity(0.5)),
    );
  }
}
