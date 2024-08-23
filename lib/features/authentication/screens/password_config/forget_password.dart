import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/password_config/reset_password.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //headings
            Text(
              "Forget Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: SSizes.spaceBtwItems,
            ),
            Text(
              "Don't worry sometimes people can forget too enter your email and we will send you a password reset link",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: SSizes.spaceBtwSections * 2,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "E-mail",
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(
              height: SSizes.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.off(() => const ResetPassword());
                    },
                    child: const Text("SUBMIT")))
          ],
        ),
      ),
    );
  }
}
