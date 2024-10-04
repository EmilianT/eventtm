import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMBottomSheetTheme {
  EventTMBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: EventTMColors.lightColorScheme.surface,
    modalBackgroundColor: EventTMColors.lightColorScheme.surface,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: EventTMColors.darkColorScheme.surface,
      modalBackgroundColor: EventTMColors.darkColorScheme.surface,
      constraints: const BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );
}