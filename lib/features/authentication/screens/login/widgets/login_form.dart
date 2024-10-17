import 'package:eventtm/navigation_menu.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
// import 'package:eventtm/utils/theme/widgets/checkbox_theme.dart';
import 'package:eventtm/utils/theme/widgets/elevatedbutton_theme.dart';
import 'package:eventtm/utils/theme/widgets/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup/register.dart';

class EventTMLoginForm extends StatelessWidget {
  const EventTMLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);

    final bodyMediumLight = EventTMTextTheme.lightTextTheme.bodyMedium;
    final bodyMediumDark = EventTMTextTheme.darkTextTheme.bodyMedium;

    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: EventTMSizes.spaceBtwSections),
      child: Form(
          child: Column(
        children: [
          //Email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.direct_right),
              prefixIconColor: dark
                  ? EventTMColors.darkColorScheme.secondary
                  : EventTMColors.lightColorScheme.secondary,
              labelText: EventTMTexts.email,
            ),
          ),
          const SizedBox(height: EventTMSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                prefixIconColor: dark
                    ? EventTMColors.darkColorScheme.secondary
                    : EventTMColors.lightColorScheme.secondary,
                labelText: EventTMTexts.password,
                suffixIcon: const Icon(Iconsax.eye_slash),
                suffixIconColor: dark
                    ? EventTMColors.darkColorScheme.secondary
                    : EventTMColors.lightColorScheme.secondary),
          ),
          const SizedBox(height: EventTMSizes.spaceBtwInputFields / 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remember Me
              Checkbox(value: true, onChanged: (value) {}),
              Text(EventTMTexts.rememberMe, style: dark ? bodyMediumDark : bodyMediumLight,),

              const SizedBox(
                width: EventTMSizes.defaultSpace,
              ),
              //Forget password
              TextButton(
                  onPressed: () {},
                  child: const Text(EventTMTexts.forgotPassword)),
            ],
          ),
          const SizedBox(height: EventTMSizes.spaceBtwSections),

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()), style: dark ? EventTMElevatedButtonTheme.darkElevatedButtonTheme.style : EventTMElevatedButtonTheme.lightElevatedButtonTheme.style,
                child:  const Text(EventTMTexts.signIn),
              )),

          const SizedBox(height: EventTMSizes.spaceBtwInputFields),

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const SignUp()), style: dark ? EventTMElevatedButtonTheme.lightElevatedButtonTheme.style : EventTMElevatedButtonTheme.darkElevatedButtonTheme.style,
                  child: const Text(EventTMTexts.createAccount),
                  )),

          const SizedBox(height: EventTMSizes.spaceBtwSections),
        ],
      )),
    );
  }
}
