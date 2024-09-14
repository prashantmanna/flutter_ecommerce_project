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
      padding: const EdgeInsets.all(SSizes.md),
      width: double.infinity,
      showBorder: true,
      bgColor: selectedAddress ? Scolors.primaryColor.withOpacity(0.5):Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? Scolors.darkerGrey : Scolors.grey,
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? Scolors.light.withOpacity(0.6) : Scolors.dark.withOpacity(0.6):null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Prashant Manna",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: SSizes.sm/2,),
              const Text("+91 9307381649",maxLines:1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: SSizes.sm/2,),
              Text("Vardhaman Nagar,Tulinj Road,Nalasopara(E)",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
                softWrap: true,
              ),

            ],
          )
        ],
      ),
    );
  }
}
