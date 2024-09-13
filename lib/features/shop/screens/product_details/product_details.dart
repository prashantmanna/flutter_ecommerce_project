import 'package:flutter/material.dart';
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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),

            Padding(padding:EdgeInsets.only(right: SSizes.defaultSpace,
            left: SSizes.defaultSpace,
            bottom: SSizes.defaultSpace),
            child: Column(
              children: [
                //rating 
                RatingAndShare(),
                //price
                Productmetadata()
              ],
            ),),

          ],
        ),
      ),
    );
  }
}




