import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMShadowStyle {
  static final verticalEventShadow = BoxShadow(
    color: EventTMColors.darkColorScheme.onSecondary.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalEventShadow = BoxShadow(
      color: EventTMColors.darkColorScheme.onSecondary.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );
}