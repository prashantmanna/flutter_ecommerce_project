import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
class OrderItems extends StatelessWidget {
  const OrderItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      separatorBuilder: (_,__)=>const SizedBox(height: SSizes.spaceBtwItems,),
      itemBuilder: (_,index)=> CircularWidget(
        showBorder: true,
        bgColor: dark ? Scolors.dark : Scolors.light,
        padding: const EdgeInsets.all(SSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(width: SSizes.spaceBtwItems/2,),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Processing",
                      style: Theme.of(context).textTheme.bodyLarge!.apply(color: Scolors.primaryColor,fontWeightDelta: 1),),
                      Text("02 Nov,2024",
                      style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right4,size: SSizes.iconSm,))
              ],
            ),
            const SizedBox(height: SSizes.spaceBtwItems,),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.tag),
                      const SizedBox(width: SSizes.spaceBtwItems/2,),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order",
                              style: Theme.of(context).textTheme.labelMedium,),
                            Text("[978674]",
                              style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: SSizes.spaceBtwItems/2,),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping Date",
                              style: Theme.of(context).textTheme.labelMedium,),
                            Text("5 Nov,2024",
                              style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      
          ],
        ),
      ),
    );
  }
}
