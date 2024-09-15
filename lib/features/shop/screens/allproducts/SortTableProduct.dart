import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/layouts/SGridLayout.dart';
import '../../../../common/widgets/products_cards/ProductVertical.dart';
import '../../../../utils/constants/sizes.dart';
class SortTableProduct extends StatelessWidget {
  const SortTableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.sort)
            ),
            items: [
              "Name","Highest Price","Lower Price","Sale","Popularity","Discount"]
                .map((option) => DropdownMenuItem(
              value: option,
              child: Text(option),
            )
            ).toList(),
            onChanged: (change){}),
        const SizedBox(height: SSizes.spaceBtwItems,),
        SGridLayout(itemCount: 10, itemBuilder: (_,index)=> const ProductVertical())
      ],
    );
  }
}