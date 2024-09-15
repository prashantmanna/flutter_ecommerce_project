import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/loginsignup/AppButtonSignIn.dart';
import 'package:flutter_ecommerce_project/common/loginsignup/AppDivider.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/signup/SignUpForm.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const CustomAppbar(
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                "Let's create your account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: SSizes.spaceBtwSections,
              ),
              //form
              SignUpForm(dark: dark),
              const SizedBox(height: SSizes.spaceBtwSections,),
              AppDivider(dark: dark, text: "or sign up with".capitalize!),
              const SizedBox(height: SSizes.spaceBtwSections,),
              const AppButtonSign(),
            ],
          ),
        ),
      ),
    );
  }
}


