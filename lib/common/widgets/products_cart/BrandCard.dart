import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/images/SCircularWidget.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleText.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleWIthVerifiedIcon.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
class Brandcard extends StatelessWidget {
  const Brandcard({super.key,
    required this.showBorder,
    this.onTap});


  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: CircularWidget(
        showBorder: showBorder,
        bgColor: Colors.transparent,
        padding: const EdgeInsets.all(SSizes.sm),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: SCircularWidget(
                isNetworkImage: false,
                url: SImages.watch1,
                bgColor: Colors.transparent,
              )
            ),
            SizedBox(width: SSizes.spaceBtwItems/2,),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BrandTitleWithVerifiedIcon(title: "Titan",),
                  BrandTitletext(title: "256 products")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
