import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMTabBar extends StatelessWidget implements PreferredSizeWidget {
  const EventTMTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);

    return Material(
      color: dark
          ? EventTMColors.darkColorScheme.surface
          : EventTMColors.lightColorScheme.surface,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: dark
            ? EventTMColors.darkColorScheme.primary
            : EventTMColors.lightColorScheme.primary,
        unselectedLabelColor: dark
            ? EventTMColors.darkColorScheme.primaryContainer
            : EventTMColors.lightColorScheme.primaryContainer,
        labelColor: dark
            ? EventTMColors.darkColorScheme.primary
            : EventTMColors.lightColorScheme.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(EventTMHelpers.getAppBarHeight());
}
