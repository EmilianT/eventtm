import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMCircularContainer extends StatelessWidget {
  const EventTMCircularContainer({
    super.key,
    required this.dark,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = Colors.white70,
  });

  final bool dark;
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: dark
            ? EventTMColors.darkColorScheme.onPrimary.withOpacity(0.1)
            : EventTMColors.lightColorScheme.onPrimary.withOpacity(0.1),
      ),
      child: child,
    );
  }
}