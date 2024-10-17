import 'package:eventtm/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class EventTMCategoryTitleText extends StatelessWidget {
  const EventTMCategoryTitleText(
      {super.key,
      this.color,
      required this.title,
      this.maxLines = 1,
      this.textAlign = TextAlign.center,
      this.categoryTextSizes = TextSizes.small});

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes categoryTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: categoryTextSizes == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : categoryTextSizes == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : categoryTextSizes == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: color)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: color));
  }
}
