import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMVerticalImageText extends StatelessWidget {
  const EventTMVerticalImageText({
    super.key,
    required this.dark,
    required this.image,
    required this.title,
    this.onTap,
  });

  final bool dark;
  final String image, title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: EventTMSizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(EventTMSizes.sm),
              decoration: BoxDecoration(
                  color: dark
                      ? EventTMColors.darkColorScheme.surfaceContainerHighest
                      : EventTMColors.lightColorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      color: dark
                          ? EventTMColors.darkColorScheme.secondary
                          : EventTMColors.lightColorScheme.secondary)),
            ),

            /// Text
            const SizedBox(height: EventTMSizes.spaceBtwItems / 2),
            SizedBox(
                width: 55,
                child: Text(title,
                    style: Theme.of(context).textTheme.labelMedium!.apply(
                        color: dark
                            ? EventTMColors.darkColorScheme.onSurface
                            : EventTMColors.lightColorScheme.onSurface),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis))
          ],
        ),
      ),
    );
  }
}