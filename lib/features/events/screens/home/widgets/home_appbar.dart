import 'package:eventtm/common/widgets/appbar/appbar.dart';
import 'package:eventtm/utils/constants/text_strings.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class EventTMHomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const EventTMHomeAppBar({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return EventTMAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(EventTMTexts.appBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: dark ? EventTMColors.darkColorScheme.primary : EventTMColors.lightColorScheme.primary),),
          Text(EventTMTexts.appBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: dark ? EventTMColors.darkColorScheme.primary : EventTMColors.lightColorScheme.primary),)
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Iconsax.filter, color: dark ? EventTMColors.darkColorScheme.onPrimary : EventTMColors.lightColorScheme.onPrimary,))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EventTMHelpers.getAppBarHeight());
}