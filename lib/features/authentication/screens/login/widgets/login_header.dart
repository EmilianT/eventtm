import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/constants/text_strings.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/theme/widgets/text_theme.dart';
import 'package:flutter/material.dart';

class EventTMLoginHeader extends StatelessWidget {
  const EventTMLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = EventTMHelpers.screenWidth();
    final screenHeight = EventTMHelpers.screenHeight();

    final headlineLargeLight = EventTMTextTheme.lightTextTheme.headlineLarge;
    final headlineLargeDark = EventTMTextTheme.darkTextTheme.headlineLarge;
    final bodyLargeLight = EventTMTextTheme.lightTextTheme.bodyLarge;
    final bodyLargeDark = EventTMTextTheme.darkTextTheme.bodyLarge;

    final dark = EventTMHelpers.isDarkMode(context);

    return Padding(
        padding: const EdgeInsets.only(top: EventTMSizes.appBarHeight),
        child: SizedBox(
          width: screenWidth * 0.8,
          height: screenHeight * 0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(EventTMTexts.appTitle,
                      style: dark ? headlineLargeDark : headlineLargeLight),
                  const SizedBox(height: EventTMSizes.spaceBtwItems),
                  Text(EventTMTexts.appSubTitle,
                      style: dark ? bodyLargeDark : bodyLargeLight),
                ],
              ),
            ],
          ),
        ));
  }
}
