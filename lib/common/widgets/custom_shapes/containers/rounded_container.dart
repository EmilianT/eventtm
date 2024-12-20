import 'package:eventtm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EventTMRoundedContainer extends StatelessWidget {
  const EventTMRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = EventTMSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.backgroundColor = Colors.transparent,
      this.borderColor = Colors.transparent,
      this.padding,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null
      ),
      child: child,
    );
  }
}
