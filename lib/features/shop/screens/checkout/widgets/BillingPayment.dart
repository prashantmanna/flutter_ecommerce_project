import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
class BillingPayment extends StatelessWidget {
  const BillingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Subtotal",style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$750.0",style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: SSizes.spaceBtwItems/2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping fee",style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$10.0",style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: SSizes.spaceBtwItems/2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax fee",style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$10.0",style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        SizedBox(height: SSizes.spaceBtwItems/2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total",style: Theme.of(context).textTheme.bodyMedium,),
            Text("\$770.0",style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
      ],
    );
  }
}
