import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup/register.dart';
// import '../../../utils/helpers/helper_functions.dart';

class EventTMLoginForm extends StatelessWidget {
  const EventTMLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final dark = EventTMHelpers.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: EventTMSizes.spaceBtwSections),
      child: Form(
          child: Column(
            children: [
              //Email
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: EventTMTexts.email,
                ),
              ),
              const SizedBox(
                  height: EventTMSizes.spaceBtwInputFields),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: EventTMTexts.password,
                    suffixIcon: Icon(Iconsax.eye_slash)),
              ),
              const SizedBox(
                  height: EventTMSizes.spaceBtwInputFields / 2),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Remember Me
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(EventTMTexts.rememberMe),

                  const SizedBox(
                    width: EventTMSizes.defaultSpace,
                  ),
                  //Forget password
                  TextButton(
                      onPressed: () {},
                      child:
                      const Text(EventTMTexts.forgotPassword)),
                ],
              ),
              const SizedBox(height: EventTMSizes.spaceBtwSections),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(EventTMTexts.signIn),
                  )),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const SignUp()),
                      child:
                      const Text(EventTMTexts.createAccount))),

              const SizedBox(height: EventTMSizes.spaceBtwSections),
            ],
          )),
    );
  }
}