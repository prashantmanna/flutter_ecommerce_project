import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/styles/SShadowStyle.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleWIthVerifiedIcon.dart';
import 'package:flutter_ecommerce_project/common/title_text/product_price_text.dart';
import 'package:flutter_ecommerce_project/common/widgets/banner/RoundedBanner.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/product_details/product_details.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/CircularIcon.dart';
import '../../title_text/product_title_text.dart';

class ProductVertical extends StatelessWidget {
  const ProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ()=> Get.to(const ProductDetails()),
      child: Container(
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
                  const RoundedBanner(imageUrl: SImages.shoes1,fit: BoxFit.contain,applyImageRadius: true,),
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
            const SizedBox(height: SSizes.spaceBtwItems/2,),

            //details

            const Padding(padding: EdgeInsets.all(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                product_title_text(title: "Green Nike Air Shoes",smallSize: true,),
                SizedBox(height: SSizes.spaceBtwItems/2,),
                BrandTitleWithVerifiedIcon(title: "Nike")

              ],
            ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: SSizes.sm),
                  child: product_price_text(price: "35.5"),
                ),
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
    );
  }
}






