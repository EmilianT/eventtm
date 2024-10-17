import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMCircularImage extends StatelessWidget {
  const EventTMCircularImage({
    super.key,
    required this.dark,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.overlayColor,
    this.width = 56,
    this.height = 56,
    this.padding = EventTMSizes.sm,
  });

  final bool dark;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? backgroundColor, overlayColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: dark
              ? EventTMColors.darkColorScheme.surface
              : EventTMColors.lightColorScheme.surface,
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        fit: fit,
        color: dark
            ? EventTMColors.lightColorScheme.surface
            : EventTMColors.darkColorScheme.surface,
      ),
    );
  }
}
