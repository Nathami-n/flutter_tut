import "package:e_commerce/features/authentication/contollers/onboarding/onboarding.controller.dart";
import "package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart";
import "package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next.dart";
import "package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart";
import "package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart";
import "package:e_commerce/utils/constants/image_strings.dart";
import "package:e_commerce/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),
        const OnBoardingSkip(),
        const OnBoardingBottomNavigation(),
        const OnBoardingNextButton()
      ],
    ));
  }
}
