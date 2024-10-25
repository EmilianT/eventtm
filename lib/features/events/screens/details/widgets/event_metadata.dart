import 'package:eventtm/common/widgets/texts/event_category_title_text.dart';
import 'package:eventtm/common/widgets/texts/event_title_text.dart';
import 'package:eventtm/features/events/screens/details/widgets/rate_and_share.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';

class EventTMMetaData extends StatefulWidget {
  const EventTMMetaData({super.key});

  @override
  _EventTMMetaDataState createState() => _EventTMMetaDataState();
}

class _EventTMMetaDataState extends State<EventTMMetaData> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title, Rate and Share
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            EventTMTitleText(title: 'Exit Club'),
            EventTMRateAndShare(),
          ],
        ),

        /// Category
        const EventTMCategoryTitleText(title: 'Nightclub'),
        const SizedBox(
          height: EventTMSizes.spaceBtwSections,
        ),

        /// Description
        const EventTMSectionHeading(title: 'Description'),
        const SizedBox(
          height: EventTMSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'Imagine a place where the music pulses through your veins, the lights dance to the rhythm, and the atmosphere buzzes with electric energy. This club, an urban oasis, welcomes you with its chic decor and a vibe that screams sophistication. Whether you want to lose yourself on the dance floor or sip a cocktail while people-watching, this place promises unforgettable nights filled with laughter and euphoria. Intrigued?',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show More',
          trimExpandedText: 'Less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
        ),

        /// Reviews
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const EventTMSectionHeading(
              title: 'Reviews (100+)',
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.arrow_right_3_copy,
                  size: 18,
                ))
          ],
        ),
        const SizedBox(height: EventTMSizes.spaceBtwSections),

        /// Calendar Events go here
        const Divider(),
        const Row(
          children: [
            EventTMSectionHeading(title: 'Events'),
          ],
        ),
        const SizedBox(height: EventTMSizes.spaceBtwSections),

        // Tabs and Tab Views without DefaultTabController
        TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Monday'),
            Tab(text: 'Tuesday'),
            Tab(text: 'Wednesday'),
            Tab(text: 'Thursday'),
            Tab(text: 'Friday'),
            Tab(text: 'Saturday'),
            Tab(text: 'Sunday'),
          ],
        ),
        SizedBox(
          height: 300.0, // Adjust as needed
          child: TabBarView(
            controller: _tabController,
            children: const [
              EventsForDay(day: 'Monday'),
              EventsForDay(day: 'Tuesday'),
              EventsForDay(day: 'Wednesday'),
              EventsForDay(day: 'Thursday'),
              EventsForDay(day: 'Friday'),
              EventsForDay(day: 'Saturday'),
              EventsForDay(day: 'Sunday'),
            ],
          ),
        ),
      ],
    );
  }
}

class EventsForDay extends StatelessWidget {
  final String day;
  const EventsForDay({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Divider(),
        Row(
          children: [
            Expanded(
              child: EventTMSectionHeading(title: '$day Events'),
            ),
          ],
        ),
        // Add your event widgets here
      ],
    );
  }
}

class EventTMSectionHeading extends StatelessWidget {
  final String title;
  const EventTMSectionHeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
