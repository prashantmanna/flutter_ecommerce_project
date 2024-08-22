import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/styles/spacingStyle.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/constants/text_string.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image:
                        AssetImage(dark ? SImages.whiteLogo : SImages.darkLogo),
                  ),
                  Text(
                    SText.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: SSizes.sm,
                  ),
                  Text(
                    SText.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: SSizes.spaceBtwSections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: "Enter your Email Address",
                      ),
                    ),
                    SizedBox(
                      height: SSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: "Enter Your Password",
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    SizedBox(
                      height: SSizes.spaceBtwInputFields / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //remember me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            Text("Remember Me")
                          ],
                        ),
                        TextButton(
                            onPressed: () {}, child: Text("Forget Password"))
                      ],
                    ),
                    SizedBox(
                      height: SSizes.spaceBtwSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Sign In")),
                    ),
                    SizedBox(
                      height: SSizes.spaceBtwItems,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: Text("Create Account")),
                    ),
                    SizedBox(
                      height: SSizes.spaceBtwSections,
                    ),
                  ],
                ),
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: dark?Scolors.darkGrey:Scolors.grey,thickness: 0.5,indent: 60,endIndent: 5,),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
