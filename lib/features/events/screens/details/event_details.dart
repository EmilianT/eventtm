import 'package:eventtm/features/events/screens/details/widgets/event_image_slider.dart';
import 'package:eventtm/features/events/screens/details/widgets/event_metadata.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Eventdetail extends StatelessWidget {
  const Eventdetail({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Event Image Slider
            EventTMEventImageSlider(),

            /// Event Details
            Padding(
              padding: EdgeInsets.only(
                right: EventTMSizes.defaultSpace,
                left: EventTMSizes.defaultSpace,
                bottom: EventTMSizes.defaultSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Title, subtitle, category, Rating & Share
                  EventTMMetaData(),
                  ///
                  /// Attributes
                  ///
                  /// Description
                  ///
                  /// Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}