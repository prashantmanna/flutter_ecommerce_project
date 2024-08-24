import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class mySearchBar extends StatelessWidget {
  const mySearchBar({
    super.key,
    required this.text,
    this.iconData = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? iconData;
  final bool showBackground,showBorder;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
      child: Container(
        width: SDeviceUtility.getScreenWidth(context),
        padding: const EdgeInsets.all(SSizes.md),
        decoration: BoxDecoration(
            color: showBackground?dark?Scolors.black:Scolors.white:Colors.transparent,
            borderRadius: BorderRadius.circular(SSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: Scolors.grey) : null
        ),
        child: Row(
          children: [
            Icon(iconData,color: Scolors.darkerGrey,),
            const SizedBox(width: SSizes.spaceBtwItems,),
            Text(text,style: Theme.of(context).textTheme.bodySmall,),
          ],
        ),
      ),
    );
  }
}