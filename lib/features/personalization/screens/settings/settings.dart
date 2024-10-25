import 'package:eventtm/common/widgets/appbar/appbar.dart';
import 'package:eventtm/common/widgets/custom_shapes/containers/primary_container.dart';
import 'package:eventtm/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:eventtm/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:eventtm/common/widgets/texts/section_heading.dart';
import 'package:eventtm/utils/constants/sizes.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EventTMHelpers.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            EventTMPrimaryContainer(
                dark: dark,
                child: Column(
                  children: [
                    EventTMAppBar(
                      title: Text(
                        'Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(
                                color: dark
                                    ? EventTMColors.darkColorScheme.onPrimary
                                    : EventTMColors.lightColorScheme.onPrimary),
                      ),
                    ),
                    EventTMUserProfileTile(
                      dark: dark,
                    ),
                    const SizedBox(height: EventTMSizes.spaceBtwSections),
                  ],
                )),

            /// Body
            Padding(
              padding: const EdgeInsets.all(EventTMSizes.defaultSpace),
              child: Column(
                children: [
                  const EventTMSectionHeading(title: 'Account settings'),
                  const SizedBox(height: EventTMSizes.spaceBtwItems),

                  /// Default Menu Tiles
                  const EventTMSettingsMenuTiles(
                      icon: Iconsax.safe_home,
                      title: 'Proba',
                      subtitle: 'Proba subtitle'),

                  /// Menu tiles with switch
                  const SizedBox(height: EventTMSizes.spaceBtwSections),
                  const EventTMSectionHeading(title: 'Menu tiles with switch'),
                  EventTMSettingsMenuTiles(
                    icon: Iconsax.frame_2_copy,
                    title: 'Proba switch',
                    subtitle: 'Proba subtitle switch',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// Logout Button
                  const SizedBox(
                    height: EventTMSizes.spaceBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text('Logout'))),
                  const SizedBox(height: EventTMSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
