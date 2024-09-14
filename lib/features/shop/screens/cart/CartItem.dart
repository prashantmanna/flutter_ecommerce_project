import 'package:flutter/material.dart';

import '../../../../common/title_text/BrandTitleWIthVerifiedIcon.dart';
import '../../../../common/title_text/product_title_text.dart';
import '../../../../common/widgets/banner/RoundedBanner.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RoundedBanner(imageUrl: SImages.mobile3,
          width: 70,
          height: 70,
          padding: EdgeInsets.all(SSizes.sm),),
        const SizedBox(width: SSizes.spaceBtwItems,),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerifiedIcon(title: "Motorola"),
              const Flexible(child: product_title_text(title: "Motorola G64 5G")),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: "Color",style:Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "Blue",style:Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: "Size",style:Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: "7.1",style:Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
