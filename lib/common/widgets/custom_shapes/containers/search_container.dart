import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/helpers/device_utility.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class EventTMSearchContainer extends StatelessWidget {
  const EventTMSearchContainer({
    super.key,
    required this.dark,
    required this.text,
    this.icon = Iconsax.search_normal_1_copy,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: EventTMSizes.defaultSpace),
  });

  final bool dark;
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        width: EventsTMDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(EventTMSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                ? EventTMColors.darkColorScheme.surfaceContainerHighest
                : EventTMColors.lightColorScheme.surfaceContainerHighest
                : Colors.transparent,
            borderRadius: BorderRadius.circular(EventTMSizes.cardRadiusLg),
            border: showBorder
                ? Border.all(
                color: dark
                    ? EventTMColors.darkColorScheme.primaryContainer
                    : EventTMColors.lightColorScheme.primaryContainer)
                : null),
        child: Row(
          children: [
            Icon(icon,
                color: dark
                    ? EventTMColors.darkColorScheme.onSurface
                    : EventTMColors.lightColorScheme.onSurface),
            const SizedBox(width: EventTMSizes.spaceBtwItems),
            Text(text,  style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}