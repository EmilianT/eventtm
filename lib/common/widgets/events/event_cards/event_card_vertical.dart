import 'package:eventtm/common/styles/shadows.dart';
import 'package:eventtm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eventtm/common/widgets/icon/eventtm_circular_icon.dart';
import 'package:eventtm/common/widgets/images/eventtm_thumbnail_image.dart';
import 'package:eventtm/common/widgets/texts/event_category_text.dart';
import 'package:eventtm/utils/constants/enums.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:eventtm/common/widgets/texts/event_category_title_text.dart';

class EventTMCardVertical extends StatelessWidget {
  const EventTMCardVertical(
      {super.key,
      required this.showBorder,
      this.onTap,
      required this.imageUrl});

  final bool showBorder;
  final void Function()? onTap;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EventTMShadowStyle.verticalEventShadow],
          borderRadius: BorderRadius.circular(EventTMSizes.productImageRadius),
          color: dark
              ? EventTMColors.darkColorScheme.surfaceContainerHighest
              : EventTMColors.lightColorScheme.surfaceContainerHighest,
        ),
        child: Column(
          children: [
            /// Thumbnail, favorite button
            EventTMRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(EventTMSizes.sm),
              backgroundColor: dark
                  ? EventTMColors.darkColorScheme.surfaceContainer
                  : EventTMColors.lightColorScheme.surfaceContainer,
              borderColor: dark
                  ? EventTMColors.darkColorScheme.surfaceContainerHighest
                  : EventTMColors.lightColorScheme.surfaceContainerHighest,
              child: Stack(
                children: [
                  /// Thumbnail image
                  EventTMThumbnailImage(
                    imageUrl: imageUrl,
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: EventTMCircularIcon(
                        dark: dark,
                        icon: Iconsax.heart,
                        color: Colors.red,
                        width: 40,
                        height: 40,
                      ))
                ],
              ),
            ),
            const SizedBox(height: EventTMSizes.spaceBtwItems / 2),

            /// Details
            const Padding(padding: EdgeInsets.only(left: EventTMSizes.sm)),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                EventTMCategoryTitleText(
                  title: 'Exit Club',
                  categoryTextSizes: TextSizes.large,
                ),
                SizedBox(height: EventTMSizes.spaceBtwItems / 2),
                EventTMCategoryText(
                  title: 'Nightlife',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}