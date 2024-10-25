import 'package:eventtm/common/widgets/appbar/appbar.dart';
import 'package:eventtm/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:eventtm/common/widgets/icon/eventtm_circular_icon.dart';
import 'package:eventtm/common/widgets/images/eventtm_rounded_image.dart';
import 'package:eventtm/utils/constants/image_strings.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class EventTMEventImageSlider extends StatelessWidget {
  const EventTMEventImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);

    return EventTMCustomCurvedEdge(
      dark: dark,
      child: Container(
        color: dark
            ? EventTMColors.darkColorScheme.surface
            : EventTMColors.lightColorScheme.surface,
        child: Stack(
          children: [
            /// Main Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(
                      EventTMSizes.productImageRadius * 2.5),
                  child: Center(
                      child: Image(
                          image: AssetImage(EventTMImages.exitclub))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: EventTMSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: EventTMSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => EventTMRoundedImage(
                    imageUrl: EventTMImages.fratelli,
                    width: 80,
                    backgroundColor: dark
                        ? EventTMColors.darkColorScheme.surface
                        : EventTMColors.lightColorScheme.surface,
                    border: Border.all(
                        color: dark
                            ? EventTMColors.darkColorScheme.primary
                            : EventTMColors.lightColorScheme.primary),
                    padding: const EdgeInsets.all(EventTMSizes.sm),
                  ),
                ),
              ),
            ),
            EventTMAppBar(showBackArrow: true, actions: [EventTMCircularIcon(dark: dark, icon: Iconsax.heart, color: Colors.red,)],)
          ],
        ),
      ),
    );
  }
}