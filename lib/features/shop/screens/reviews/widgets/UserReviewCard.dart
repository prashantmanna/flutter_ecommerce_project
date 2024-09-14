import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleWIthVerifiedIcon.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/reviews/widgets/MyRatingBarIndicator.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';
class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(SImages.man),

                ),
                const SizedBox(width: SSizes.spaceBtwItems,),
                Text("Prashant Manna",style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems,),
        const Row(
          children: [
            MyRatingBarIndicator(rating: 3.9),
            SizedBox(width: SSizes.spaceBtwSections,),
            Text("01 Nov,2021")
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems,),
        const ReadMoreText("This mobile phone is very useful in very efficient way.I need to tell you that you afford this very easily.Hope you buy this product.This mobile phone is very useful in very efficient way.I need to tell you that you afford this very easily.",
        trimLines: 2,
        trimMode: TrimMode.Line,
        trimExpandedText: "...show less",
        trimCollapsedText: "...show more",
        moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Scolors.primaryColor),
        lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Scolors.primaryColor),),
        const SizedBox(height: SSizes.spaceBtwItems,),
        CircularWidget(
          bgColor: dark ? Scolors.darkerGrey : Scolors.grey,
          child: Padding(
            padding: const EdgeInsets.all(SSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BrandTitleWithVerifiedIcon(title: "Motorola"),
                    Text("02 Nov,2021",style: Theme.of(context).textTheme.bodyLarge,),

                  ],
                ),
                const SizedBox(height: SSizes.spaceBtwItems,),
                const ReadMoreText("This mobile phone is very useful in very efficient way.I need to tell you that you afford this very easily.Hope you buy this product.",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "...show less",
                  trimCollapsedText: "...show more",
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Scolors.primaryColor),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Scolors.primaryColor),),
              ],
            ),
          ),
        ),
        const SizedBox(height: SSizes.spaceBtwSections,)
      ],
    );
  }
}
