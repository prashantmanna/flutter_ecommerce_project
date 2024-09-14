import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Sectionheading(title: "Payment Method",showActionButton: true,buttonTitle: "Change",onPressed: (){},),
        const SizedBox(height: SSizes.spaceBtwItems/2,),
        Row(
          children: [
            CircularWidget(
              width: 60,
              height: 60,
              bgColor: dark ? Scolors.light : Scolors.white,
            )
          ],
        )
      ],
    );
  }
}
