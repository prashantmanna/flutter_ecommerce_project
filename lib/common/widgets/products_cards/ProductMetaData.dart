import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleWIthVerifiedIcon.dart';
import 'package:flutter_ecommerce_project/common/widgets/PriceTextWidget.dart';
import 'package:flutter_ecommerce_project/common/widgets/banner/RoundedBanner.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/ProductCustomText.dart';
import 'package:flutter_ecommerce_project/utils/constants/enums.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../custom_shapes/CircularWidget.dart';
class Productmetadata extends StatelessWidget {
  const Productmetadata({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price
        Row(
          children: [
            //sale tag
            Positioned(
              top: 10,
              child: CircularWidget(radius: SSizes.sm,
                bgColor: Scolors.secondaryColor.withOpacity(0.8),
                padding: const EdgeInsets.symmetric(horizontal: SSizes.sm,vertical: SSizes.xs),
                child: Text("25%",style: Theme.of(context).textTheme.labelLarge!.apply(color: Scolors.black),),),
            ),
            const SizedBox(width: SSizes.spaceBtwItems,),
            Text('\$750',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: SSizes.spaceBtwItems,),
            const PriceTextWidget(price: "690",isLarge: true,)
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems/2,),
        //title
        const ProductText(title: "Moto g64",smallSize: false,),

        const SizedBox(height: SSizes.spaceBtwItems/1.5,),
        Row(

          children: [
            const ProductText(title: "Status"),
            const SizedBox(width: SSizes.spaceBtwItems,),
            Text("In Stock",style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems/1.5,),
        const Row(
          children: [
            RoundedBanner(imageUrl: SImages.moto,
            height: 20,
            width: 20,),
            SizedBox(width: SSizes.sm,),
            BrandTitleWithVerifiedIcon(
              title: "Motorola",
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
