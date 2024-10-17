import 'package:eventtm/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:eventtm/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class EventTMHomeCategories extends StatelessWidget {
  const EventTMHomeCategories({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {

    final categories = [
      {'image': EventTMImages.restaurant, 'title': 'Restaurant'},
      {'image': EventTMImages.nightlife, 'title': 'Nightlife'},
      {'image': EventTMImages.festivals, 'title': 'Events & Festivals'},
      {'image': EventTMImages.arts, 'title': 'Arts & Culture'},
      {'image': EventTMImages.outside, 'title': 'Outside Activities'},
      {'image': EventTMImages.family, 'title': 'Family & Children'},
      {'image': EventTMImages.shopping, 'title': 'Shopping'},
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            final category = categories[index];
            return EventTMVerticalImageText(
              dark: dark,
              image: category['image']!,
              title: category['title']!,
              onTap: () {}
            );
          }),
    );
  }
}