import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWIdget.dart';
import 'package:flutter_ecommerce_project/common/styles/SShadowStyle.dart';
import 'package:flutter_ecommerce_project/common/widgets/banner/RoundedBanner.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/CircularIcon.dart';
import '../../title_text/product_title_text.dart';
import '../PriceTextWidget.dart';
import '../icon/CircularFavourite.dart';
import '../product_text/ProductCustomText.dart';

class ProductVertical extends StatelessWidget {
  const ProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,

      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(SSizes.productImageRadius),
          boxShadow: [SShadowStyle.verticalProductShadow],
          color: dark ? Scolors.darkGrey : Scolors.white
      ),
      child: Column(
        children: [
          //thumbnail
          CircularWidget(
          height: 180,
            padding: const EdgeInsets.all(1),
            bgColor: dark ? Scolors.dark:Scolors.light,
            child: Stack(
              children: [
                const RoundedImage(imageUrl: SImages.shoes1,fit: BoxFit.contain,applyImageRadius: true,),
                Positioned(
                  top: 10,
                  child: CircularWidget(radius: SSizes.sm,bgColor: Scolors.secondaryColor.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(horizontal: SSizes.sm,vertical: SSizes.xs),
                  child: Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: Scolors.black),),),
                ),
                const Positioned(
                    top: 0,
                    right: 0,
                    child: SCircularIcon(icon: Iconsax.heart5,color: Colors.redAccent,))
              ],
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwItems/2,),

          //details

          Padding(padding: const EdgeInsets.only(left: SSizes.sm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const product_title_text(title: "Green Nike Air Shoes",smallSize: true,),
              const SizedBox(height: SSizes.spaceBtwItems/2,),
              Row(
                children: [
                  Text("Nike",overflow: TextOverflow.ellipsis,maxLines: 1,style: Theme.of(context).textTheme.labelMedium!.apply(color: Scolors.black)),
                  SizedBox(width: SSizes.xs,),
                  Icon(Iconsax.verify5,color: Scolors.primaryColor,size: SSizes.xs,)
                ],
              )
            ],
          ),)
        ],
      ),
    );
  }
}



