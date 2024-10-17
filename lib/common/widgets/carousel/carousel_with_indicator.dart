import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EventTMCarouselWithIndicatorWidget extends StatefulWidget {
  final List<String> imgList;

  const EventTMCarouselWithIndicatorWidget({super.key, required this.imgList});

  @override
  State<EventTMCarouselWithIndicatorWidget> createState() =>
      _EventTMCarouselWithIndicatorWidgetState();
}

class _EventTMCarouselWithIndicatorWidgetState
    extends State<EventTMCarouselWithIndicatorWidget> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);
    return Column(
      children: [
        CarouselSlider(
          items: widget.imgList.map((item) => Image.asset(item)).toList(),
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        AnimatedSmoothIndicator(
          activeIndex: _current,
          count: widget.imgList.length,
          effect:ExpandingDotsEffect(
              dotWidth: 12,
              dotHeight: 12,
              activeDotColor: dark
                  ? EventTMColors.darkColorScheme.primary
                  : EventTMColors.lightColorScheme.primary,
              dotColor: dark
                  ? EventTMColors.darkColorScheme.secondary
                  : EventTMColors.lightColorScheme.secondary),
        )
      ],
    );
  }
}
