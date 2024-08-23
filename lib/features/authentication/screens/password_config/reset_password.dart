import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                  width: SSizes.screenWidth*0.6,
                  image: const AssetImage(
                      "assets/images/sammy-man-receives-a-mail.png")),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              Text(
                "Change Your Password",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              Text(
                "Your Account Security is our priority.We've sent you a secure link to safely change your password and keep your account protected",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {
                    Get.to(() => Login())
                  },
                  child: const Text(
                    "DONE",
                  ),
                ),
              ),
              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => {},
                  child: const Text(
                    "Resend Email",
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
