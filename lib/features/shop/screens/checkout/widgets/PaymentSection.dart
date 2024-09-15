import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

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
              width: 20,
              height: 20,
              bgColor: dark ? Scolors.light : Scolors.white,
              child: const Image(image: AssetImage(SImages.paypal),fit: BoxFit.contain,),
            ),
            const SizedBox(width: SSizes.spaceBtwItems/2,),
            Text("Paypal",style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}
