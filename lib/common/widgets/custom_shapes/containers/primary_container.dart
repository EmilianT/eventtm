import 'package:eventtm/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:eventtm/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class EventTMPrimaryContainer extends StatelessWidget {
  const EventTMPrimaryContainer({
    super.key,
    required this.dark,
    required this.child,
  });

  final bool dark;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EventTMCustomCurvedEdge(
      dark: dark,
      child: Container(
        color: dark
            ? EventTMColors.lightColorScheme.primary
            : EventTMColors.darkColorScheme.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(children: [
            Positioned(
                top: -150,
                right: -150,
                child: EventTMCircularContainer(dark: dark)),
            Positioned(
                top: 100,
                left: -50,
                child: EventTMCircularContainer(dark: dark)),
            child,
          ]),
        ),
      ),
    );
  }
}