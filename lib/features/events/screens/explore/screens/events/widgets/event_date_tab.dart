import 'package:eventtm/common/widgets/events/event_cards/event_category_showcase.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EventTMDateTab extends StatelessWidget {
  const EventTMDateTab({
    super.key,
    required this.dark,
    required this.title,
    required this.subtitle,
    required this.categoryImage,
    required this.eventImages,
  });

  final bool dark;
  final String title, subtitle, categoryImage;
  final List<String> eventImages;

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(EventTMSizes.defaultSpace),
            child: Column(
              children: [
                /// Categories
                EventTMCategoryShowcase(
                  dark: dark,
                  images: eventImages,
                  title: title,
                  subtitle: subtitle,
                  categoryImage: categoryImage,
                ),
                // EventTMCategoryShowcase(
                //   dark: dark,
                //   images: eventImages,
                //   title: title,
                //   subtitle: subtitle,
                //   categoryImage: categoryImage,
                // ),
                // EventTMCategoryShowcase(
                //   dark: dark,
                //   images: eventImages,
                //   title: 'Restaurant',
                //   subtitle: subtitle,
                //   categoryImage: categoryImage,
                // ),
                // EventTMCategoryShowcase(
                //   dark: dark,
                //   images: eventImages,
                //   title: 'Restaurant',
                //   subtitle: subtitle,
                //   categoryImage: categoryImage,
                // ),
                // EventTMCategoryShowcase(
                //   dark: dark,
                //   images: eventImages,
                //   title: 'Restaurant',
                //   subtitle: subtitle,
                //   categoryImage: categoryImage,
                // ),
                // EventTMCategoryShowcase(
                //   dark: dark,
                //   images: eventImages,
                //   title: 'Restaurant',
                //   subtitle: subtitle,
                //   categoryImage: categoryImage,
                // ),
                // EventTMCategoryShowcase(
                //   dark: dark,
                //   images: eventImages,
                //   title: 'Restaurant',
                //   subtitle: subtitle,
                //   categoryImage: categoryImage,
              ],
            ),
          ),
        ]);
  }
}
