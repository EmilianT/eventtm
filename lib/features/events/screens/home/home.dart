import 'package:eventtm/common/widgets/carousel/carousel_with_indicator.dart';
import 'package:eventtm/common/widgets/custom_shapes/containers/primary_container.dart';
import 'package:eventtm/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:eventtm/common/widgets/events/event_cards/event_card_vertical.dart';
import 'package:eventtm/common/widgets/layouts/grid_layout.dart';
import 'package:eventtm/common/widgets/texts/section_heading.dart';
import 'package:eventtm/features/events/screens/home/widgets/home_appbar.dart';
import 'package:eventtm/features/events/screens/home/widgets/home_categories.dart';
import 'package:eventtm/utils/constants/image_strings.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> imgList = [
    EventTMImages.banner1,
    EventTMImages.banner2,
    EventTMImages.banner3,
  ];

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              EventTMPrimaryContainer(
                dark: dark,
                child: Column(
                  children: [

                    /// APP BAR
                    EventTMHomeAppBar(dark: dark),
                    const SizedBox(height: EventTMSizes.spaceBtwSections),

                    /// CATEGORIES
                    Padding(
                      padding:
                      const EdgeInsets.only(left: EventTMSizes.defaultSpace),
                      child: Column(
                        children: [

                          /// Heading
                          const EventTMSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                          ),
                          const SizedBox(
                            height: EventTMSizes.spaceBtwItems,
                          ),

                          /// Categories
                          EventTMHomeCategories(dark: dark),
                          const SizedBox(height: EventTMSizes.spaceBtwSections)
                        ],
                      ),
                    ),

                    /// SEARCHBAR
                    EventTMSearchContainer(dark: dark, text: 'Search in app'),
                  ],
                ),
              ),

              /// Body
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: EventTMSectionHeading(title: 'EventTM top picks', onPressed: () {},),
                  ),
                  SizedBox(
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: EventTMSizes.defaultSpace,
                            bottom: EventTMSizes.defaultSpace,
                            right: EventTMSizes.defaultSpace),
                        child: Column(
                          children: [
                            EventTMCarouselWithIndicatorWidget(
                                imgList: imgList),
                            const SizedBox(height: EventTMSizes.spaceBtwItems),
                          ],
                        )),
                  ),

                  /// Grid
                  EventTMGridLayout(itemCount: 2, itemBuilder: (_ , index ) => EventTMCardVertical(imageUrl: EventTMImages.exitclub ,showBorder: true, onTap: (){},),)
                ],
              ),
            ],
          ),
        ));
  }
}