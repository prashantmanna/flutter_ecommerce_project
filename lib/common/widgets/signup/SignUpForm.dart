import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/verify_email.dart';
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
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
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
              Get.to(VerifyEmail());
            },
            child: const Text("Create Account"),
          ),)
        ],
      ),
    );
  }
}