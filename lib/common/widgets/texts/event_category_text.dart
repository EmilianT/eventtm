import 'package:eventtm/common/widgets/texts/event_category_title_text.dart';
import 'package:eventtm/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class EventTMCategoryText extends StatelessWidget {
  const EventTMCategoryText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.textAlign = TextAlign.center,
    this.iconColor,
    this.categoryTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign textAlign;
  final TextSizes categoryTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: EventTMCategoryTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          categoryTextSizes: categoryTextSizes,
        )),
      ],
    );
  }
}
