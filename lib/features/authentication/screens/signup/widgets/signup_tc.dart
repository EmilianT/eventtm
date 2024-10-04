import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/styles/colors.dart';

class EventTMTandC extends StatelessWidget {
  const EventTMTandC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child:
            Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: EventTMSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${EventTMTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: EventTMTexts.privacyPolicy,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                  color: dark
                      ? EventTMColors
                      .darkColorScheme.primary
                      : EventTMColors
                      .lightColorScheme.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? EventTMColors
                      .darkColorScheme.primary
                      : EventTMColors
                      .lightColorScheme.primary)),
          TextSpan(
              text: ' ${EventTMTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: EventTMTexts.termsOfUse,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(
                color: dark
                    ? EventTMColors
                    .darkColorScheme.primary
                    : EventTMColors
                    .lightColorScheme.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark
                    ? EventTMColors
                    .darkColorScheme.primary
                    : EventTMColors
                    .lightColorScheme.primary),
          )
        ]))
      ],
    );
  }
}