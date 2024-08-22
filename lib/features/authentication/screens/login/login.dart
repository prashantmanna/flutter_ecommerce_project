import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/styles/spacingStyle.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/constants/text_string.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/loginsignup/AppButtonSignIn.dart';
import '../../../../common/loginsignup/AppColumn.dart';
import '../../../../common/loginsignup/AppDivider.dart';
import '../../../../common/loginsignup/AppForm.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.space,
          child: Column(
            children: [
              AppColum(dark: dark),
              const AppForm(),
              AppDivider(dark: dark,text: "Or Sign In With",),
              const SizedBox(height: SSizes.spaceBtwSections,),
              const AppButtonSign()
            ],
          ),
        ),
      ),
    );
  }
}








