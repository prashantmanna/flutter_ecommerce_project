import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleWIthVerifiedIcon.dart';
import 'package:flutter_ecommerce_project/common/title_text/product_price_text.dart';
import 'package:flutter_ecommerce_project/common/title_text/product_title_text.dart';
import 'package:flutter_ecommerce_project/common/widgets/banner/RoundedBanner.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../icons/CircularIcon.dart';
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
    color: dark ? Scolors.darkGrey : Scolors.softGrey
    ),
      child: Row(
        children: [
          CircularWidget(
            height: 120,
            bgColor: dark ? Scolors.dark : Scolors.light,
            padding: const EdgeInsets.all(SSizes.xs),
            child: Stack(
              children: [
                const SizedBox(
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
          ),
          SizedBox(
            width: 180,
            child: Padding(
              padding: const EdgeInsets.only(top: SSizes.sm,left: SSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      product_title_text(title: "Adidas Military Shoes",smallSize: true,),
                      SizedBox(height: SSizes.spaceBtwItems/2,),
                      BrandTitleWithVerifiedIcon(title: "Adidas")
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //price
                      const Flexible(child: product_price_text(price: "399")),
                      //add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: Scolors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(SSizes.cardRadiusMd),
                              bottomRight: Radius.circular(SSizes.productImageRadius)
                          ),
                        ),
                        child: const SizedBox(
                            width: SSizes.iconLg*1.2,
                            height: SSizes.iconLg*1.2,
                            child: Center(child: Icon(Iconsax.add,color: Scolors.white,))),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
