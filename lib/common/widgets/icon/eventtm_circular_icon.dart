import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMCircularIcon extends StatelessWidget {
  const EventTMCircularIcon({
    super.key,
    required this.dark,
    this.width,
    this.height,
    this.size = EventTMSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final bool dark;
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? EventTMColors.darkColorScheme.surfaceContainerHighest
                    .withOpacity(0.9)
                : EventTMColors.lightColorScheme.surfaceContainerHighest
                    .withOpacity(0.9),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon, color: color, size: size,)),
    );
  }
}
