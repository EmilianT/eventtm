import 'package:eventtm/features/authentication/controllers/controllers_onboarding/onboarding_controller.dart';
import 'package:eventtm/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eventtm/utils/constants/image_strings.dart';
import '../../../features/screens_onboarding/onboarding_navigation.dart';
import '../../../features/screens_onboarding/onboarding_next_button.dart';
import '../../../features/screens_onboarding/onboarding_page.dart';
import '../../../features/screens_onboarding/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
      children: [
        //Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: EventTMImages.appLogo,
              title: EventTMTexts.onBoardingTitle1,
              subTitle: EventTMTexts.onBoardingSubtitle1,
            ),
            OnBoardingPage(
              image: EventTMImages.appLogo,
              title: EventTMTexts.onBoardingTitle2,
              subTitle: EventTMTexts.onBoardingSubtitle2,
            ),
            OnBoardingPage(
              image: EventTMImages.appLogo,
              title: EventTMTexts.onBoardingTitle3,
              subTitle: EventTMTexts.onBoardingSubtitle3,
            )
          ],
        ),

        //Skip Button
        const OnBoardingSkip(),
        //Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),
        //Circular Button
        const OnBoardingNextButton()
      ],
    ));
  }
}


