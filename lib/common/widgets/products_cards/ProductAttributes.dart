import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/chips/Choice_chip.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/title_text/product_title_text.dart';
import 'package:flutter_ecommerce_project/common/widgets/PriceTextWidget.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/ProductCustomText.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

class Productattributes extends StatelessWidget {
  const Productattributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //selected
        CircularWidget(
          padding: const EdgeInsets.all(SSizes.md),
          bgColor: dark ? Scolors.darkerGrey : Scolors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const Sectionheading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: SSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const product_title_text(
                            title: "Price :  ",
                            smallSize: true,
                          ),
                          Text(
                            "\$750",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: SSizes.spaceBtwItems,
                          ),
                          const PriceTextWidget(price: "680")
                        ],
                      ),
                      Row(
                        children: [
                          const product_title_text(
                            title: "Stock : ",
                            smallSize: true,
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),

                  ///actual price
                ],
              ),
              const ProductText(
                title:
                    "This is description of product and it can go upto 4 lines",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: SSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Sectionheading(title: "Colors",showActionButton: false,),
            const SizedBox(
              height: SSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                Choice_chip(text: "Yellow", selected: false,onSelected: (value) {},),
                Choice_chip(text: "Pink", selected: true,onSelected: (value){},),
                Choice_chip(text: "Blue", selected: false,onSelected: (value){},),

              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Sectionheading(title: "Sizes",showActionButton: false,),
            const SizedBox(
              height: SSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                Choice_chip(text: "6.7", selected: true,onSelected: (value){},),
                Choice_chip(text: "7.5", selected: false,onSelected: (value){},),
                Choice_chip(text: "6.1", selected: false,onSelected: (value){},),

              ],
            )
          ],
        )
      ],
    );
  }
}

