import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class EventTMLoginHeader extends StatelessWidget {
  const EventTMLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(
                dark ? EventTMImages.appLogoDark : EventTMImages.appLogo)),
        Text(EventTMTexts.appTitle,
            style: TextStyle(
                color: dark
                    ? EventTMColors.darkColorScheme.primary
                    : EventTMColors.lightColorScheme.primary,
                fontSize: EventTMSizes.xl,
            fontWeight: FontWeight.bold)),
        const SizedBox(height: EventTMSizes.spaceBtwItems),
        Text(EventTMTexts.appSubTitle,
            style: TextStyle(
                color: dark
                    ? EventTMColors.lightColorScheme.inversePrimary
                    : EventTMColors.darkColorScheme.inversePrimary,
                fontSize: EventTMSizes.fontSizeLg,
            fontWeight: FontWeight.w300)),
      ],
    );
  }
}
