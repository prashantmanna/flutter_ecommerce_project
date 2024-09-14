import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cards/ProductAttributes.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cards/ProductMetaData.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/reviews/product_reviews.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/products_cards/ProductImageSlider.dart';
import '../../../../common/widgets/products_cards/RatingAndShare.dart';
import 'BottomAddToCart.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  right: SSizes.defaultSpace,
                  left: SSizes.defaultSpace,
                  bottom: SSizes.defaultSpace),
              child: Column(
                children: [
                  //rating
                  const RatingAndShare(),
                  //price
                  const Productmetadata(),
                  const SizedBox(
                    height: SSizes.spaceBtwItems,
                  ),
                  //attributes
                  const Productattributes(),
                  const SizedBox(
                    height: SSizes.spaceBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Checkout"))),

                  const SizedBox(
                    height: SSizes.spaceBtwItems,
                  ),
                  const Sectionheading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: SSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    "Motorola is perfect for users developing something unique along with advanced censors and cameras.Motorola is perfect for users developing something unique along with advanced censors and cameras.Motorola is perfect for users developing something unique along with advanced censors and cameras.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " ..Show More",
                    trimExpandedText: "  ..Less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.blue),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.blue),
                  ),
                  const Divider(),
                  const SizedBox(height: SSizes.spaceBtwItems,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                    Sectionheading(title: "Reviews(199)",onPressed: (){},showActionButton: false,),
                    IconButton(onPressed: ()=>Get.to(const ProductReviews()), icon: const Icon(Iconsax.arrow_right_3))]
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
