import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/styles/spacingStyle.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

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
                  image: const AssetImage("assets/images/techno-user-profile-on-phone-screen.png")
              ),
              const SizedBox(height: SSizes.spaceBtwItems,),
              Text("Your account successfully created!",style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              Text("Welcome to your ultimate shopping destination your account is created.Unleash the joy of seamless online shopping",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: SSizes.spaceBtwSections,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>Get.to(() => const Login()),
                  child: const Text("Continue",),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
