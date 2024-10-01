import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/shimmer/SShimmer.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Scolors.white,
    this.bgColor = Scolors.white,
    required this.onTap,
    this.isNetworkImage = true
  });

  final String image,title;
  final Color textColor;
  final Color? bgColor;
  final void Function() onTap;
  final bool isNetworkImage;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(SSizes.sm),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(100),
                color: bgColor ?? (dark ? Scolors.black:Scolors.white),
              ),
              child: Center(
                child: isNetworkImage ?
                    CachedNetworkImage(imageUrl: image,fit: BoxFit.fill,progressIndicatorBuilder: (context,url,downloadProgress)=>SShimmer(width: 55, height: 55,radius: 55,),
                      errorWidget: (context,url,error)=> Icon(Icons.error),
                    ) :
                    Image(image: AssetImage(image),fit: BoxFit.fill,)
            ),),
            const SizedBox(
              height: SSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ))
          ],
        ),
      ),
    );
  }
}