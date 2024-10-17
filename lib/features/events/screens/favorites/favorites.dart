import 'package:eventtm/common/widgets/appbar/appbar.dart';
import 'package:eventtm/common/widgets/events/event_cards/event_card_vertical.dart';
import 'package:eventtm/common/widgets/layouts/grid_layout.dart';
import 'package:eventtm/utils/constants/image_strings.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EventTMAppBar(
        title: Text(
          'Favorites',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EventTMSizes.defaultSpace),
          child: Column(
            children: [
              EventTMGridLayout(itemCount: 4, itemBuilder: (_, index) => const EventTMCardVertical(showBorder: true, imageUrl: EventTMImages.exitclub))
            ],
          ),
        ),
      ),
    );
  }
}
