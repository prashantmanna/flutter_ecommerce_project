import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/reviews/widgets/MyRatingBarIndicator.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/reviews/widgets/OverallProductRating.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: Text("Reviews & Ratings"),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Ratings and reviews are verified and are from people who use tha same type of device that you are."),
            const SizedBox(height: SSizes.spaceBtwItems,),
            const OverallProductRating(),
            const MyRatingBarIndicator(rating: 4.1),
            Text("12.300",style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: SSizes.spaceBtwSections,),



          ],
        ),),
      ),
    );
  }
}

