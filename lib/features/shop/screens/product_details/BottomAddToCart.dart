import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/icons/CircularIcon.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace,vertical: SSizes.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark ? Scolors.darkerGrey : Scolors.light,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(SSizes.cardRadiusLg),topRight: Radius.circular(SSizes.cardRadiusLg))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SCircularIcon(icon: Iconsax.minus,width: 40,height: 40,color: Colors.white,bgColor: Colors.black.withOpacity(0.4),),
              const SizedBox(width: SSizes.spaceBtwItems,),
              Text("2",style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: SSizes.spaceBtwItems,),
              SCircularIcon(icon: Iconsax.add,width: 40,height: 40,color: Colors.white,bgColor: Colors.black.withOpacity(0.4),),
            ],
          ),
          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(SSizes.md),
                  backgroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black)
              ) ,
              child: const Text("Add To Cart"))
        ],
      ),

    );
  }
}
