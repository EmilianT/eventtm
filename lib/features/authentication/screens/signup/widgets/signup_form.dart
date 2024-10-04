import 'package:eventtm/features/authentication/screens/signup/widgets/signup_tc.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/styles/colors.dart';

class EventTMSignUpForm extends StatelessWidget {
  const EventTMSignUpForm({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);
    return Form(
        child: Column(
          children: [
            Row(children: [
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: dark
                                  ? EventTMColors
                                  .darkColorScheme.inverseSurface
                                  : EventTMColors.lightColorScheme
                                  .inverseSurface)),
                      labelText: EventTMTexts.firstName,
                      prefixIcon: const Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: EventTMSizes.spaceBtwInputFields,
                height: EventTMSizes.spaceBtwSections,
              ),
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: dark
                                  ? EventTMColors
                                  .darkColorScheme.inverseSurface
                                  : EventTMColors.lightColorScheme
                                  .inverseSurface)),
                      labelText: EventTMTexts.lastName,
                      prefixIcon: const Icon(Iconsax.user)),
                ),
              ),
            ]),
            const SizedBox(height: EventTMSizes.spaceBtwInputFields),

            /// Username
            TextFormField(
              expands: false,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                          color: dark
                              ? EventTMColors
                              .darkColorScheme.inverseSurface
                              : EventTMColors
                              .lightColorScheme.inverseSurface)),
                  labelText: EventTMTexts.userName,
                  prefixIcon: const Icon(Iconsax.user)),
            ),

            const SizedBox(height: EventTMSizes.spaceBtwInputFields),

            /// Email
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                          color: dark
                              ? EventTMColors
                              .darkColorScheme.inverseSurface
                              : EventTMColors
                              .lightColorScheme.inverseSurface)),
                  labelText: EventTMTexts.email,
                  prefixIcon: const Icon(Iconsax.direct)),
            ),

            const SizedBox(height: EventTMSizes.spaceBtwInputFields),

            /// Phone Number
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                          color: dark
                              ? EventTMColors
                              .darkColorScheme.inverseSurface
                              : EventTMColors
                              .lightColorScheme.inverseSurface)),
                  labelText: EventTMTexts.phoneNumber,
                  prefixIcon: const Icon(Iconsax.call)),
            ),

            const SizedBox(height: EventTMSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                          color: dark
                              ? EventTMColors
                              .darkColorScheme.inverseSurface
                              : EventTMColors
                              .lightColorScheme.inverseSurface)),
                  labelText: EventTMTexts.password,
                  prefixIcon: const Icon(Iconsax.user_edit),
                  suffixIcon: const Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: EventTMSizes.spaceBtwSections),

            /// Terms & Conditions
            const EventTMTandC(),
          ],
        ));
  }
}