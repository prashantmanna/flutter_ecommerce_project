import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/styles/spacingStyle.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';

class SuccessScreen extends StatelessWidget {
  final String image,title,subtitle;
  final VoidCallback callback;
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.space * 2,
          child: Column(
            children: [
              Image(
                  width: SSizes.screenWidth,
                  image: AssetImage(
                      image)),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: callback,
                  child: const Text(
                    "Continue",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
