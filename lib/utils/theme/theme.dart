import 'package:eventtm/utils/styles/colors.dart';
import 'package:eventtm/utils/theme/widgets/appbar_theme.dart';
import 'package:eventtm/utils/theme/widgets/bottomsheet_theme.dart';
import 'package:eventtm/utils/theme/widgets/checkbox_theme.dart';
import 'package:eventtm/utils/theme/widgets/chip_theme.dart';
import 'package:eventtm/utils/theme/widgets/elevatedbutton_theme.dart';
import 'package:eventtm/utils/theme/widgets/inputdecoration_theme.dart';
import 'package:eventtm/utils/theme/widgets/outlinedbutton_theme.dart';
import 'package:eventtm/utils/theme/widgets/text_theme.dart';
import 'package:flutter/material.dart';

class EventTMAppTheme {
  EventTMAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: EventTMColors.lightColorScheme.onSurfaceVariant,
    brightness: Brightness.light,
    primaryColor: EventTMColors.lightColorScheme.primary,
    textTheme: EventTMTextTheme.lightTextTheme,
    chipTheme: EventTMChipTheme.lightChipTheme,
    scaffoldBackgroundColor: EventTMColors.lightColorScheme.surface,
    appBarTheme: EventTMAppBar.lightAppBarTheme,
    checkboxTheme: EventTMCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: EventTMBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: EventTMElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: EventTMOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: EventTMInputDecorationTheme.lightInputDecorationTheme,

  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: EventTMColors.darkColorScheme.onSurfaceVariant,
    brightness: Brightness.dark,
    primaryColor: EventTMColors.darkColorScheme.primary,
    textTheme: EventTMTextTheme.darkTextTheme,
    chipTheme: EventTMChipTheme.darkChipTheme,
    scaffoldBackgroundColor: EventTMColors.darkColorScheme.surface,
    appBarTheme: EventTMAppBar.darkAppBarTheme,
    checkboxTheme: EventTMCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: EventTMBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: EventTMElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: EventTMOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: EventTMInputDecorationTheme.darkInputDecorationTheme,
  );
}