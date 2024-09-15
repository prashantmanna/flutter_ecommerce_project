import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sectionheading(title: "Shipping Address",buttonTitle: "Change",onPressed: (){},),
        Text("Prashant Manna",style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: SSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16,),
            const SizedBox(width: SSizes.spaceBtwItems,),
            Text("+91 9307381649",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16,),
            const SizedBox(width: SSizes.spaceBtwItems,),
            Text("Tulinj Road,Nalasopara (E),Mumbai",style: Theme.of(context).textTheme.bodyMedium,)
          ],
        )

      ],
    );
  }
}
