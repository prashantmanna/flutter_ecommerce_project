import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cards/ProductAttributes.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cards/ProductMetaData.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products_cards/ProductImageSlider.dart';
import '../../../../common/widgets/products_cards/RatingAndShare.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),

            Padding(padding:const EdgeInsets.only(right: SSizes.defaultSpace,
            left: SSizes.defaultSpace,
            bottom: SSizes.defaultSpace),
            child: Column(

              children: [
                //rating 
                const RatingAndShare(),
                //price
                const Productmetadata(),
                const SizedBox(height: SSizes.spaceBtwItems,),
                //attributes
                const Productattributes(),
                const SizedBox(height: SSizes.spaceBtwSections,),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: const Text("Checkout"))),
                SizedBox(height: SSizes.spaceBtwItems,),
                const Sectionheading(title: "Description",showActionButton: false,),
                const SizedBox(height: SSizes.spaceBtwItems,),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}




