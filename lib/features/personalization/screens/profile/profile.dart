import 'package:eventtm/common/widgets/appbar/appbar.dart';
import 'package:eventtm/common/widgets/images/eventtm_circular_image.dart';
import 'package:eventtm/common/widgets/texts/section_heading.dart';
import 'package:eventtm/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:eventtm/utils/constants/image_strings.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);
    return Scaffold(
      appBar: const EventTMAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(EventTMSizes.defaultSpace),
          child: Column(
            children: [
              // Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    EventTMCircularImage(
                      dark: dark,
                      image: EventTMImages.profilePicture,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Change Profile Picture',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: EventTMSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: EventTMSizes.spaceBtwItems),
              const EventTMSectionHeading(title: 'Profile information'),
              const SizedBox(height: EventTMSizes.spaceBtwItems),

              const EventTMProfileMenuWidget(title: 'Name', value: 'Emilian'),
              const EventTMProfileMenuWidget(
                  title: 'Username', value: 'Emilian'),

              const SizedBox(height: EventTMSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: EventTMSizes.spaceBtwItems),

              const EventTMProfileMenuWidget(
                title: 'ID',
                value: 'Emilian',
                icon: Iconsax.copy_copy,
              ),
              const EventTMProfileMenuWidget(title: 'Email', value: 'Emilian'),
              const EventTMProfileMenuWidget(title: 'Phone', value: 'Emilian'),
              const EventTMProfileMenuWidget(title: 'Gender', value: 'Emilian'),
              const EventTMProfileMenuWidget(
                  title: 'Date of Birth', value: 'Emilian'),

              const Divider(),
              const SizedBox(height: EventTMSizes.spaceBtwItems),

              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Delete Account',
                      style: TextStyle(
                          color: dark
                              ? EventTMColors.darkColorScheme.error
                              : EventTMColors.lightColorScheme.error),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
