import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/controllers/onboarding/onboarding_controller.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class Skip extends StatelessWidget {
  const Skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: SDeviceUtility.getAppBarHeight(),
        right: SSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnboardingController.instance.skipPage();
          },
          child: const Text("Skip"),
        ));
  }
}

class onBoardingPage extends StatefulWidget {
  final String image, title, subtitle;

  const onBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  State<onBoardingPage> createState() => _onBoardingPageState();
}

class _onBoardingPageState extends State<onBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: SHelperFunctions.screenWidth() * 0.8,
            height: SHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(widget.image),
          ),
          Text(
            widget.title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: SSizes.spaceBtwItems,
          ),
          Text(
            widget.subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
