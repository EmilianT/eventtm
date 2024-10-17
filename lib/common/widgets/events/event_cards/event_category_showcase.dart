import 'package:eventtm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eventtm/common/widgets/events/event_cards/event_card_horizontal.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMCategoryShowcase extends StatelessWidget {
  const EventTMCategoryShowcase({
    super.key,
    required this.dark,
    required this.images,
    required this.title,
    required this.subtitle,
    required this.categoryImage,
  });

  final bool dark;
  final String categoryImage;
  final List<String> images;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return EventTMRoundedContainer(
      backgroundColor: Colors.transparent,
      borderColor: dark
          ? EventTMColors.darkColorScheme.primaryContainer
          : EventTMColors.lightColorScheme.primaryContainer,
      showBorder: true,
      margin: const EdgeInsets.only(bottom: EventTMSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Category with events count
          EventTMCardHorizontal(
            imageUrl: categoryImage,
            title: title,
            subtitle: subtitle,
          ),

          /// Top 3 events
          Row(
              children: images
                  .map((image) => eventTMTopImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }

  Widget eventTMTopImageWidget(String image, context) {
    return Expanded(
      child: EventTMRoundedContainer(
        height: 100,
        backgroundColor: dark
            ? EventTMColors.darkColorScheme.surfaceContainer
            : EventTMColors.lightColorScheme.surfaceContainer,
        margin: const EdgeInsets.only(right: EventTMSizes.sm),
        padding: const EdgeInsets.all(EventTMSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}