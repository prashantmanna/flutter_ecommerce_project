import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/password_config/forget_password.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/signup/signup.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/home/home.dart';
import 'package:flutter_ecommerce_project/navigation_menu.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/sizes.dart';
class AppForm extends StatelessWidget {
  const AppForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: SSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "Enter your Email Address",
              ),
            ),
            const SizedBox(
              height: SSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: "Enter Your Password",
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: SSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Remember Me")
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() => ForgetPassword());
                    }, child: const Text("Forget Password"))
              ],
            ),
            const SizedBox(
              height: SSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=> const NavigationMenu());
                  }, child: const Text("Sign In")),
            ),
            const SizedBox(
              height: SSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(()=>const Signup());
                  }, child: const Text("Create Account")),
            ),
          ],
        ),
      ),
    );
  }
}