import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_project/features/authentication/sucess_screen.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const Login()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage(
                    "assets/images/techny-mobile-bank-security-and-personal-finance-protection.png"),
                width: SHelperFunctions.screenWidth() * 0.8,
              ),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              Text(
                "Verify your email address!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              Text(
                "mannaprashant12@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              Text(
                "Congratulations! Your Account Awaits verify your email to start shopping and experience a world of great deals and personalised offers",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const SuccessScreen());
                  },
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend Email"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
