import 'package:eventtm/features/events/screens/explore/explore.dart';
import 'package:eventtm/features/events/screens/home/home.dart';
import 'package:eventtm/utils/helpers/helper_functions.dart';
import 'package:eventtm/utils/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = EventTMHelpers.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              backgroundColor: dark
                  ? EventTMColors.darkColorScheme.surface
                  : EventTMColors.lightColorScheme.surface,
              indicatorColor: dark
                  ? EventTMColors.darkColorScheme.onSurface.withOpacity(0.5)
                  : EventTMColors.lightColorScheme.onSurface.withOpacity(0.5),
              destinations: const [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Iconsax.save_2), label: 'Explore'),
                NavigationDestination(
                    icon: Icon(Iconsax.heart), label: 'Followed'),
                NavigationDestination(
                    icon: Icon(Iconsax.user), label: 'Profile'),
              ])),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    const Explore(),
    Container(color: Colors.red),
    Container(color: Colors.blue)
  ];
}
