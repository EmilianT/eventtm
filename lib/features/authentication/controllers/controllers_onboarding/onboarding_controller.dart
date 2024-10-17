import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

//Variables
final pageController = PageController();
Rx<int> currentPageIndex = 0.obs;

//Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

//Jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

// Update Current Index & JUMP TO NEXT PAGE
  void nextPage() {
    if (currentPageIndex.value ==2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(page, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

//Update Current Index & Jump to the last page
  void skipPage() {
    Get.offAll(const LoginScreen());
  }
}