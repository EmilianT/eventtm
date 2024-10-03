import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class EventTMSocialButtons extends StatelessWidget {
  const EventTMSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: () {}, icon: const Image(width: EventTMSizes.iconMd, height: EventTMSizes.iconMd, image: AssetImage(EventTMImages.google))),
        ),
        const SizedBox(width: EventTMSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: () {}, icon: const Image(width: EventTMSizes.iconMd, height: EventTMSizes.iconMd, image: AssetImage(EventTMImages.facebook))),
        )
      ],
    );
  }
}