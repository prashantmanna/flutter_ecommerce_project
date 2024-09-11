import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';

import '../../../../../common/widgets/products_cards/SBrandProducts.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),
      child: Column(
        children: [
          const SBrandProducts(
            images: [
              SImages.watch1,
              SImages.watch2,
              SImages.watch3
            ],
            
          ),
          SizedBox(height: SSizes.spaceBtwItems,),
          Sectionheading(title: "You might like",onPressed:(){} ,),
          const SizedBox(height: SSizes.spaceBtwSections,)
        ],
      ),);
  }
}
