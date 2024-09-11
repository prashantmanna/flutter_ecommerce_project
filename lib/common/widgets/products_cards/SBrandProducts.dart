import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/CircularWIdget.dart';
import '../products_cart/BrandCard.dart';
class SBrandProducts extends StatelessWidget {
  const SBrandProducts({
    super.key,
    required this.images

  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return CircularWidget(
      showBorder: true,
      borderColor: Scolors.darkGrey,
      bgColor: Colors.transparent,
      //padding: EdgeInsets.all(SSizes.sm),
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Column(
        children: [
          const Brandcard(showBorder: false),
          Row(
              children: images.map((image)=>brandTopProductImageWidget(image, context)).toList())

        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,context){
    return Expanded(
      child: CircularWidget(
        height: 100,
        padding: const EdgeInsets.all(SSizes.sm),
        margin: const EdgeInsets.only(right: SSizes.sm),
        bgColor: SHelperFunctions.isDarkMode(context)?Scolors.darkerGrey:Scolors.light,
        child: const Image(
          fit: BoxFit.cover,
          image: AssetImage(SImages.product2),
        ),
      ),
    );
  }
}
