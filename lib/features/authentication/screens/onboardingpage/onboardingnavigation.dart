import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';
class onboradingnavigation extends StatelessWidget {
  const onboradingnavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: SDeviceUtility.getBottomNavigationBarHeight()+25,
        left: SSizes.defaultSpace,

        child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
                activeDotColor: dark?Scolors.light:Scolors.dark,
                dotHeight: 6
            ),
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,count: 3));
  }
}