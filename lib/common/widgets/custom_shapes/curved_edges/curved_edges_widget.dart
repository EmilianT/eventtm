import 'package:eventtm/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class EventTMCustomCurvedEdge extends StatelessWidget {
  const EventTMCustomCurvedEdge({
    super.key,
    required this.dark,
    this.child,
  });

  final bool dark;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: EventTMCurvedEdges(), child: child);
  }
}
