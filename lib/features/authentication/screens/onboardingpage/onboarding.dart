import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/constants/text_string.dart';
import 'package:flutter_ecommerce_project/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


import 'onboardingButton.dart';
import 'onboardingnavigation.dart';
import 'onboardingwidget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: SImages.Onboarding3,
                title: SText.onBoardingTitle1,
                subtitle: SText.onBoardingSubTitle1,
              ),
              onBoardingPage(
                image: SImages.Onboarding1,
                title: SText.onBoardingTitle2,
                subtitle: SText.onBoardingSubTitle2,
              ),
              onBoardingPage(
                image: SImages.Onboarding2,
                title: SText.onBoardingTitle3,
                subtitle: SText.onBoardingSubTitle3,
              ),
            ],
          ),
          const Skip(),
          onboradingnavigation(),
          onboardingButton()
        ],
      ),
    );
  }
}




