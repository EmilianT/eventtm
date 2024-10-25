import 'package:eventtm/common/widgets/appbar/appbar.dart';
import 'package:eventtm/common/widgets/appbar/tabbar.dart';
import 'package:eventtm/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:eventtm/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:eventtm/common/widgets/images/eventtm_circular_image.dart';
import 'package:eventtm/common/widgets/layouts/grid_layout.dart';
import 'package:eventtm/common/widgets/texts/event_category_text.dart';
import 'package:eventtm/common/widgets/texts/section_heading.dart';
import 'package:eventtm/features/events/screens/explore/screens/events/widgets/event_date_tab.dart';
import 'package:eventtm/utils/constants/enums.dart';
import 'package:eventtm/utils/constants/image_strings.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);

    return DefaultTabController(
      length: 7,
      child: Scaffold(
          appBar: EventTMAppBar(
            title: Text('Explore',
                style: Theme.of(context).textTheme.headlineMedium),
          ),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrollable) {
                return [
                  SliverAppBar(
                      automaticallyImplyLeading: false,
                      pinned: true,
                      floating: true,
                      backgroundColor: dark
                          ? EventTMColors.darkColorScheme.surface
                          : EventTMColors.lightColorScheme.surface,
                      expandedHeight: 440,
                      flexibleSpace: Padding(
                        padding:
                            const EdgeInsets.all(EventTMSizes.defaultSpace),
                        child: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            /// Search bar
                            const SizedBox(height: EventTMSizes.spaceBtwItems),
                            EventTMSearchContainer(
                              dark: dark,
                              text: 'Explore places, events...',
                              showBorder: true,
                              showBackground: false,
                              padding: EdgeInsets.zero,
                            ),
                            const SizedBox(
                              height: EventTMSizes.spaceBtwSections,
                            ),

                            /// Featured Categories
                            EventTMSectionHeading(
                              title: 'Featured Categories',
                              showActionButton: true,
                              onPressed: () {},
                            ),
                            const SizedBox(
                                height: EventTMSizes.spaceBtwItems / 1.5),
                            EventTMGridLayout(
                                mainAxisExtent: 80,
                                itemCount: 4,
                                itemBuilder: (_, index) {
                                  return GestureDetector(
                                    onTap: () {},
                                    child: EventTMRoundedContainer(
                                      padding:
                                          const EdgeInsets.all(EventTMSizes.sm),
                                      showBorder: true,
                                      backgroundColor: Colors.transparent,
                                      borderColor: dark
                                          ? EventTMColors
                                              .darkColorScheme.primaryContainer
                                          : EventTMColors.lightColorScheme
                                              .primaryContainer,
                                      child: Row(
                                        children: [
                                          /// Icon
                                          Flexible(
                                            child: EventTMCircularImage(
                                              dark: dark,
                                              image: EventTMImages.nightlife,
                                              backgroundColor:
                                                  Colors.transparent,
                                              overlayColor: dark
                                                  ? EventTMColors
                                                      .darkColorScheme
                                                      .primaryContainer
                                                  : EventTMColors
                                                      .lightColorScheme
                                                      .primaryContainer,
                                            ),
                                          ),
                                          const SizedBox(
                                            width:
                                                EventTMSizes.spaceBtwItems / 2,
                                          ),

                                          /// Text
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const EventTMCategoryText(
                                                  title: 'Nightlife',
                                                  categoryTextSizes:
                                                      TextSizes.large,
                                                ),
                                                Text('100+ events today',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium)
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                })
                          ],
                        ),
                      ),

                      /// Tabs - by date
                      bottom: const EventTMTabBar(tabs: [
                        Tab(child: Text('Monday')),
                        Tab(child: Text('Tuesday')),
                        Tab(child: Text('Wednesday')),
                        Tab(child: Text('Thursday')),
                        Tab(child: Text('Friday')),
                        Tab(child: Text('Saturday')),
                        Tab(child: Text('Sunday')),
                      ]))
                ];
              },
              body: TabBarView(
                children: [
                  EventTMDateTab(
                    dark: dark,
                    title: 'Nightlife',
                    subtitle: '100+ Events',
                    categoryImage: EventTMImages.nightlife,
                    eventImages: const [
                      EventTMImages.epicsociety,
                      EventTMImages.exitclub,
                      EventTMImages.fratelli
                    ],
                  ),
                  EventTMDateTab(
                    dark: dark,
                    title: 'Nightlife',
                    subtitle: '100+ Events',
                    categoryImage: EventTMImages.nightlife,
                    eventImages: const [
                      EventTMImages.epicsociety,
                      EventTMImages.exitclub,
                      EventTMImages.fratelli
                    ],
                  ),
                  EventTMDateTab(
                    dark: dark,
                    title: 'Nightlife',
                    subtitle: '100+ Events',
                    categoryImage: EventTMImages.nightlife,
                    eventImages: const [
                      EventTMImages.epicsociety,
                      EventTMImages.exitclub,
                      EventTMImages.fratelli
                    ],
                  ),
                  EventTMDateTab(
                    dark: dark,
                    title: 'Nightlife',
                    subtitle: '100+ Events',
                    categoryImage: EventTMImages.nightlife,
                    eventImages: const [
                      EventTMImages.epicsociety,
                      EventTMImages.exitclub,
                      EventTMImages.fratelli
                    ],
                  ),
                  EventTMDateTab(
                    dark: dark,
                    title: 'Nightlife',
                    subtitle: '100+ Events',
                    categoryImage: EventTMImages.nightlife,
                    eventImages: const [
                      EventTMImages.epicsociety,
                      EventTMImages.exitclub,
                      EventTMImages.fratelli
                    ],
                  ),
                  EventTMDateTab(
                    dark: dark,
                    title: 'Nightlife',
                    subtitle: '100+ Events',
                    categoryImage: EventTMImages.nightlife,
                    eventImages: const [
                      EventTMImages.epicsociety,
                      EventTMImages.exitclub,
                      EventTMImages.fratelli
                    ],
                  ),
                  EventTMDateTab(
                    dark: dark,
                    title: 'Nightlife',
                    subtitle: '100+ Events',
                    categoryImage: EventTMImages.nightlife,
                    eventImages: const [
                      EventTMImages.epicsociety,
                      EventTMImages.exitclub,
                      EventTMImages.fratelli
                    ],
                  ),
                ],
              ))),
    );
  }
}
