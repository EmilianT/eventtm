import 'package:eventtm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../styles/colors.dart';

class EventTMInputDecorationTheme {
  EventTMInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: EventTMColors.lightColorScheme.onSurface,
    suffixIconColor: EventTMColors.lightColorScheme.onSurface,

    labelStyle: const TextStyle().copyWith(fontSize: EventTMSizes.fontSizeMd, color: EventTMColors.lightColorScheme.primary),
    hintStyle: const TextStyle().copyWith(fontSize: EventTMSizes.fontSizeMd, color: EventTMColors.lightColorScheme.primary),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: EventTMColors.lightColorScheme.primary.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
      borderSide: BorderSide(width: 1, color: EventTMColors.lightColorScheme.onSurface),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
      borderSide: BorderSide(width: 1, color: EventTMColors.lightColorScheme.onSurface),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
      borderSide: BorderSide(width: 1, color: EventTMColors.lightColorScheme.primary),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
      borderSide: BorderSide(width: 1, color: EventTMColors.lightColorScheme.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
      borderSide: BorderSide(width: 1, color: EventTMColors.lightColorScheme.error),
    )
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: EventTMColors.darkColorScheme.onSurface,
      suffixIconColor: EventTMColors.darkColorScheme.onSurface,

      labelStyle: const TextStyle().copyWith(fontSize: EventTMSizes.fontSizeMd, color: EventTMColors.darkColorScheme.primary),
      hintStyle: const TextStyle().copyWith(fontSize: EventTMSizes.fontSizeMd, color: EventTMColors.darkColorScheme.primary),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: EventTMColors.darkColorScheme.primary.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: EventTMColors.darkColorScheme.onSurface),
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: EventTMColors.darkColorScheme.onSurface),
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: EventTMColors.darkColorScheme.primary),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: EventTMColors.darkColorScheme.error),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(EventTMSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: EventTMColors.darkColorScheme.error),
      )
  );
}