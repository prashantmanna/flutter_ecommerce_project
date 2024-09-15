import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/widgets/banner/RoundedBanner.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../icons/CircularIcon.dart';
import '../../styles/SShadowStyle.dart';
class ProductHorizontal extends StatelessWidget {
  const ProductHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return  Container(
        width: 310,

        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(SSizes.productImageRadius),
    boxShadow: [SShadowStyle.verticalProductShadow],
    color: dark ? Scolors.darkGrey : Scolors.white
    ),
      child: Row(
        children: [
          CircularWidget(
            height: 120,
            bgColor: dark ? Scolors.dark : Scolors.light,
            padding: EdgeInsets.all(SSizes.xs),
            child: Stack(
              children: [
                SizedBox(
                  height:120,
                  width:120,
                  child: RoundedBanner(
                    imageUrl: SImages.shoes2,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 10,
                  child: CircularWidget(radius: SSizes.sm,bgColor: Scolors.secondaryColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: SSizes.sm,vertical: SSizes.xs),
                    child: Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: Scolors.black),),),
                ),
                const Positioned(
                    top: 0,
                    right: 0,
                    child: SCircularIcon(icon: Iconsax.heart,color: Colors.redAccent,))
              ],
            ),
          )
        ],
      ),
    );
  }
}
