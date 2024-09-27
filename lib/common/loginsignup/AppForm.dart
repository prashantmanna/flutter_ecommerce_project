import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/controllers/login/LoginController.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/password_config/forget_password.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/signup/signup.dart';
import 'package:flutter_ecommerce_project/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../utils/constants/sizes.dart';
class AppForm extends StatelessWidget {
  const AppForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: SSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              validator: (value)=>SValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "Enter your Email Address",
              ),
            ),
            const SizedBox(
              height: SSizes.spaceBtwInputFields,
            ),
            Obx(
                  () => TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                validator: (val)=> SValidator.validatePassword(val),
                decoration:  InputDecoration(
                    labelText: "Password",
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(onPressed: ()=>controller.hidePassword.value = !controller.hidePassword.value,
                        icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye))),
                expands: false,
              ),
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
                    Obx(() =>Checkbox(value: controller.rememberMe.value, onChanged: (value) {
                      controller.rememberMe.value = !controller.rememberMe.value;
                    },
                    )),
                    const Text("Remember Me")
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() => const ForgetPassword());
                    }, child: const Text("Forget Password"))
              ],
            ),
            const SizedBox(
              height: SSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton (
                  onPressed: ()  {
                    controller.login();
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