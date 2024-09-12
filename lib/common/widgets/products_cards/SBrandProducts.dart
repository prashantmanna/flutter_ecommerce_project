import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/CircularWidget.dart';
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
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.only(bottom: SSizes.sm),
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
        margin: const EdgeInsets.only(bottom: SSizes.sm),
        bgColor: SHelperFunctions.isDarkMode(context)?Scolors.darkerGrey:Scolors.light,
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
