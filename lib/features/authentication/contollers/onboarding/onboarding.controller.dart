import "package:e_commerce/features/authentication/screens/login/login.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update current index when page scrolls
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  // jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index.toInt());
  }

  // Update current index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      currentPageIndex.value++;
      pageController.nextPage(
          duration: Durations.medium3, curve: Curves.easeInCirc);
    }
  }

  // Update the current index and jump to the last page
  void skipPage() {
    Get.offAll(() => const LoginScreen());
  }
}
