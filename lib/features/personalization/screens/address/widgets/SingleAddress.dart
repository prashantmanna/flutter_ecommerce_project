import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/custom_shapes/CircularWidget.dart';
class SingleAddress extends StatelessWidget {
  const SingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return CircularWidget(
      width: double.infinity,
      showBorder: true,
      bgColor: selectedAddress ? Scolors.primaryColor.withOpacity(0.5):Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? Scolors.darkerGrey : Scolors.grey,
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Stack(
        children: [
          Icon(
            selectedAddress ? Iconsax.tick_circle5 : null,
            color: selectedAddress ? dark ? Scolors.light : Scolors.dark:null,
          )
        ],
      ),
    );
  }
}
