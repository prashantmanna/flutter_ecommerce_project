import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/icons/CircularIcon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
class AddAndRemoveButton extends StatelessWidget {
  const AddAndRemoveButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [

        SCircularIcon(icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: SSizes.md,
          color: dark ? Colors.white : Colors.black,
          bgColor: dark ? Scolors.darkerGrey : Scolors.light,),
        const SizedBox(width: SSizes.spaceBtwItems,),
        Text("2",style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: SSizes.spaceBtwItems,),
        const SCircularIcon(icon: Iconsax.add,
          width: 32,
          height: 32,
          size: SSizes.md,
          color: Colors.white,
          bgColor: Scolors.primaryColor,),
      ],
    );
  }
}

