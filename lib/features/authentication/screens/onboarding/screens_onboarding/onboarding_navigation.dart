import 'package:eventtm/features/authentication/controllers/controllers_onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/helpers/device_utility.dart';
import '../../utils/helpers/helper_functions.dart';
import '../../utils/styles/colors.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = EventTMHelpers.isDarkMode(context);

    return Positioned(
        bottom: EventsTMDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: EventTMSizes.defaultSpace,
        child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
              activeDotColor: dark?  EventTMColors.darkColorScheme.primary :
              EventTMColors.lightColorScheme.primary,
              dotHeight: 6),
        ));
  }
}