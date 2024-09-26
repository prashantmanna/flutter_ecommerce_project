import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/controllers/login/LoginController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';

class AppButtonSign extends StatelessWidget {
  const AppButtonSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Scolors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: ()=>controller.googleSignIn(),
            icon: Image(
                width: SSizes.iconLg,
                height: SSizes.iconLg,
                image: AssetImage(SImages.google)),
          ),
        ),
        const SizedBox(
          width: SSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Scolors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: SSizes.iconLg,
              height: SSizes.iconLg,
              image: AssetImage(SImages.facebook),
            ),
          ),
        )
      ],
    );
  }
}