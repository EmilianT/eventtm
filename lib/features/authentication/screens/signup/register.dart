import 'package:eventtm/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:eventtm/features/authentication/screens/login/widgets/login_footer.dart';
import 'package:eventtm/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(EventTMSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(EventTMTexts.signUpTitle,
                      style: Theme.of(context).textTheme.headlineMedium),

                  const SizedBox(height: EventTMSizes.spaceBtwSections),
                  /// Form
                  const EventTMSignUpForm(),
                  const SizedBox(height: EventTMSizes.spaceBtwSections),
                  /// Sign Up Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(EventTMTexts.createAccount)),),
                  const SizedBox(height: EventTMSizes.spaceBtwSections),
                  /// Divider
                  EventTMDivider(dark: dark, dividerText: EventTMTexts.orSignUnWith.capitalize!),
                  const SizedBox(height: EventTMSizes.spaceBtwSections),
                  /// Social Buttons - Footer
                  const EventTMSocialButtons()
                ],
              ))
          // ],
          ),
    );
  }
}