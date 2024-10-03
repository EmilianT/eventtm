import 'package:eventtm/pages/welcome/login/widgets/login_divider.dart';
import 'package:eventtm/pages/welcome/login/widgets/login_footer.dart';
import 'package:eventtm/pages/welcome/login/widgets/login_form.dart';
import 'package:eventtm/pages/welcome/login/widgets/login_header.dart';
import 'package:eventtm/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/styles/spacing_styles.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            //Background image
            Positioned.fill(child: Container(color: dark ? Colors.black.withOpacity(0.6) : Colors.transparent,),),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: dark
                        ? const AssetImage(
                            "assets/images/login_images/FadedBackground.jpg")
                        : const AssetImage(
                            "assets/images/login_images/FadedBackground.jpg"),
                    opacity: 0.4,
                    fit: BoxFit.cover),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EventTMSpacingStyle.paddingWithAppBarHeight,
                child: Column(
                  children: [
                    //Logo, Title & Subtitle
                    EventTMLoginHeader(dark: dark),

                    // Login Form
                    const EventTMLoginForm(),

                    // Divider
                    EventTMDivider(dividerText: EventTMTexts.orSignInWith.capitalize! ,dark: dark),

                    const SizedBox(height: EventTMSizes.spaceBtwSections),

                    // Footer Auth
                    const EventTMSocialButtons()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}