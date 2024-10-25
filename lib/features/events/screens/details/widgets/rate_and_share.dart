import 'package:eventtm/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EventTMRateAndShare extends StatelessWidget {
  const EventTMRateAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Rating
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
              width: EventTMSizes.spaceBtwItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '5.0',
                  style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(199)')
            ]))
          ],
        ),

        /// Share
        IconButton(onPressed: () {}, icon: const Icon(Icons.share, size: EventTMSizes.iconMd,))
      ],
    );
  }
}