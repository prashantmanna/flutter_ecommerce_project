import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_ecommerce_project/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (val) => SValidator.validateEmptyText('First Name', val),
                  decoration: const InputDecoration(
                    labelText: "first name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  expands: false,
                ),
              ),
              const SizedBox(
                width: SSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (val) => SValidator.validateEmptyText('Last Name', val),
                  decoration: const InputDecoration(
                    labelText: "last name",
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  expands: false,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: SSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: controller.userName,
              validator: (val) => SValidator.validateEmptyText('username', val),
            decoration: const InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Iconsax.user_edit),
            ),
            expands: false,
          ),
          const SizedBox(
            height: SSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: controller.email,
            validator: (val) => SValidator.validateEmail(val),
            decoration: const InputDecoration(
              labelText: "E-mail",
              prefixIcon: Icon(Iconsax.direct),
            ),
            expands: false,
          ),
          const SizedBox(
            height: SSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (val) => SValidator.validatePhoneNumber(val),
            decoration: const InputDecoration(
              labelText: "Mobile Number",
              prefixIcon: Icon(Iconsax.call),
            ),
            expands: false,
          ),
          const SizedBox(
            height: SSizes.spaceBtwInputFields,
          ),
          TextFormField(
            controller: controller.password,
            validator: (val)=> SValidator.validatePassword(val),
            decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
            expands: false,
          ),
          const SizedBox(
            height: SSizes.spaceBtwSections,
          ),
          Row(
            children: [
              SizedBox(
                  height: 24,
                  width: 24,
                  child: Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(
                width: SSizes.spaceBtwItems,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "I agree to ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: "Privacy Policy",style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark?Colors.white:Scolors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: dark?Colors.white:Scolors.primaryColor
                )),
                TextSpan(
                    text: " and ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: "Terms of use",style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark?Colors.white:Scolors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: dark?Colors.white:Scolors.primaryColor
                )),
              ]))
            ],
          ),
          const SizedBox(height: SSizes.spaceBtwSections,),
          SizedBox(width: double.infinity,child:
          ElevatedButton(

            onPressed: (){
              controller.signup_key_controller();
            },
            child: const Text("Create Account"),
          ),)
        ],
      ),
    );
  }
}