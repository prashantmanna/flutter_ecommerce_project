import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleText.dart';
import 'package:flutter_ecommerce_project/utils/constants/enums.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/sizes.dart';
class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
     this.maxLines = 1,
    this.textColor,
    this.iconColor = Colors.blue,
    this.textAlign = TextAlign.center,
     this.brandTextSize = TextSizes.small,

  });
  
  final String title;
  final int maxLines;
  final Color? textColor,iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitletext(
            title:title,
            color:textColor,
            maxLines:maxLines,
            textAlign:textAlign,
            brandTextSize:brandTextSize
          ),
        ),
        const SizedBox(width: SSizes.xs,),
        Icon(Iconsax.verify5,color: iconColor,size: SSizes.iconXs,)
      ],
    );
  }
}
