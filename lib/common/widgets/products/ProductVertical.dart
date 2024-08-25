import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWIdget.dart';
import 'package:flutter_ecommerce_project/common/styles/SShadowStyle.dart';
import 'package:flutter_ecommerce_project/common/widgets/banner/RoundedBanner.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
class ProductVertical extends StatelessWidget {
  const ProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow:[SShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(SSizes.productImageRadius),
        color: dark ? Scolors.darkGrey : Scolors.white
      ),
      child: Column(
        children: [
          CircularWidget(
            height: 180,
            padding: const EdgeInsets.all(1),
            bgColor: dark ? Scolors.dark : Scolors.light,
            child: Stack(
              children: [
                const RoundedImage(imageUrl: SImages.watch1,
                applyImageRadius: true,),
                CircularWidget(
                  radius: SSizes.sm,
                  bgColor: Scolors.secondaryColor.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(horizontal: SSizes.sm,
                      vertical: SSizes.xs),
                  child:
                    Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: Scolors.black),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
