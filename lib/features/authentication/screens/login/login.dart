import 'package:eventtm/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:eventtm/features/authentication/screens/login/widgets/login_footer.dart';
import 'package:eventtm/features/authentication/screens/login/widgets/login_form.dart';
import 'package:eventtm/features/authentication/screens/login/widgets/login_header.dart';
import 'package:eventtm/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:eventtm/utils/styles/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: dark ? EventTMColors.darkColorScheme.surface : EventTMColors.lightColorScheme.surface),
          child: Padding(
            padding: const EdgeInsets.only(top: EventTMSizes.appBarHeight, left: EventTMSizes.defaultSpace, right: EventTMSizes.defaultSpace, bottom: EventTMSizes.defaultSpace),
            child: Column(
              children: [
                //Logo, Title & Subtitle
                const EventTMLoginHeader(),

                // Login Form
                const EventTMLoginForm(),

                // Divider
                EventTMDivider(dividerText: EventTMTexts.orSignInWith.capitalize!,
                    dark: dark),

                const SizedBox(height: EventTMSizes.spaceBtwSections),

                // Footer Auth
                const EventTMSocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}