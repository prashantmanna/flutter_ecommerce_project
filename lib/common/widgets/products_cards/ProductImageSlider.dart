import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../custom_shapes/CurvedEdgeWidget.dart';
import '../../icons/CircularIcon.dart';
import '../appbar/CustomAppBar.dart';
import '../banner/RoundedBanner.dart';
class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? Scolors.darkGrey : Scolors.white,
        child:  Stack(

          children: [
            const SizedBox(
              height: 400,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: SSizes.defaultSpace),
                child: Center(
                    child: Image(image: AssetImage(SImages.mobile3),fit: BoxFit.cover,)),

              ),
            ),
            Positioned(
              right: 30,
              bottom: 30,
              left: SSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_,__)=> const SizedBox(width: SSizes.spaceBtwItems,),
                  itemCount: 6,shrinkWrap: true,scrollDirection: Axis.horizontal,physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_,index)=>RoundedBanner(
                    width: 80,
                    fit: BoxFit.scaleDown,
                    bgColor: dark?Scolors.dark:Colors.white,
                    imageUrl: SImages.mobile2,
                    border: Border.all(color: Scolors.primaryColor),
                    padding: const EdgeInsets.all(SSizes.lg),
                  ),),
              ),
            ),
            const CustomAppbar(
              showBackArrow: true,
              actions: [
                SCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              ],
            )

          ],
        ),
      ),
    );
  }
}