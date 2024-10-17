import 'package:eventtm/common/widgets/images/eventtm_rounded_image.dart';
import 'package:flutter/material.dart';

class EventTMThumbnailImage extends StatelessWidget {
  const EventTMThumbnailImage({
    super.key,
    required this.imageUrl,
    this.backgroundColor = Colors.transparent,
  });

  final String imageUrl;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return EventTMRoundedImage(
        imageUrl: imageUrl,
        backgroundColor: backgroundColor,
        applyImageRadius: true);
  }
}