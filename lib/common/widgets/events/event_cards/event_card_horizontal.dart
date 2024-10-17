import 'package:eventtm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eventtm/common/widgets/images/eventtm_thumbnail_image.dart';
import 'package:eventtm/common/widgets/texts/event_category_text.dart';
import 'package:eventtm/common/widgets/texts/event_title_text.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EventTMCardHorizontal extends StatelessWidget {
  const EventTMCardHorizontal(
      {super.key,
      this.showBorder = false,
      this.onTap,
      required this.imageUrl,
      this.backgroundColor = Colors.transparent,
      required this.title,
      required this.subtitle});

  final bool showBorder;
  final String imageUrl;
  final String title, subtitle;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: EventTMRoundedContainer(
        width: EventTMHelpers.screenWidth(),
        height: EventTMSizes.imageThumbSize,
        showBorder: showBorder,
        padding: const EdgeInsets.all(EventTMSizes.sm),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          EventTMThumbnailImage(imageUrl: imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: EventTMSizes.defaultSpace),
                EventTMTitleText(title: title),
                const SizedBox(
                  height: EventTMSizes.xs,
                ),
                EventTMCategoryText(
                  title: subtitle,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
