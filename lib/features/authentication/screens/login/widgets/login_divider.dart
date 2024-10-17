import 'package:flutter/material.dart';

import '../../../../../utils/styles/colors.dart';

class EventTMDivider extends StatelessWidget {
  const EventTMDivider({
    super.key,
    required this.dark,
    required this.dividerText,
  });

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark
                    ? EventTMColors.darkColorScheme.inverseSurface
                    : EventTMColors.lightColorScheme.inverseSurface,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
                color: dark
                    ? EventTMColors.darkColorScheme.inverseSurface
                    : EventTMColors.lightColorScheme.inverseSurface,
                thickness: 0.5,
                indent: 5,
                endIndent: 60))
      ],
    );
  }
}
