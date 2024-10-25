import 'package:eventtm/common/widgets/images/eventtm_circular_image.dart';
import 'package:eventtm/features/personalization/screens/profile/profile.dart';
import 'package:eventtm/utils/constants/image_strings.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class EventTMUserProfileTile extends StatelessWidget {
  const EventTMUserProfileTile({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: EventTMCircularImage(
            dark: dark,
            padding: 0,
            transparent: true,
            backgroundColor: Colors.transparent,
            image: EventTMImages.profilePicture,
            width: 50,
            height: 50,),
        title: Text(
          'Username',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(
              color: dark
                  ? EventTMColors.darkColorScheme.onPrimary
                  : EventTMColors
                  .lightColorScheme.onPrimary),
        ),
        subtitle: Text(
          'email@email.com',
          style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark
                  ? EventTMColors.darkColorScheme.onPrimary
                  : EventTMColors.lightColorScheme.onPrimary),
        ),
        trailing: IconButton(
          onPressed: (() => Get.to(const ProfileScreen())),
          icon: Icon(Iconsax.edit_2,
              color: dark
                  ? EventTMColors.darkColorScheme.onPrimary
                  : EventTMColors.lightColorScheme.onPrimary),
        ));
  }
}