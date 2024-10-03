import 'package:eventtm/features/authentication/controllers/controllers_onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/helpers/device_utility.dart';
import '../../utils/helpers/helper_functions.dart';
import '../../utils/styles/colors.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);

    return Positioned(
        right: EventTMSizes.defaultSpace,
        bottom: EventsTMDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            foregroundColor: dark
                ? EventTMColors.darkColorScheme.surface
                : EventTMColors.lightColorScheme.surface,
            shape: const CircleBorder(),
            backgroundColor: dark
                ? EventTMColors.darkColorScheme.primary
                : EventTMColors.lightColorScheme.primary,
          ),
          child: const Icon(Icons.arrow_forward_ios),
        ));
  }
}