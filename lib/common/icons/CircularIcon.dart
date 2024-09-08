import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';

class SCircularIcon extends StatelessWidget {
  const SCircularIcon({
    super.key,
    required this.icon,
    this.color,
    this.bgColor,
    this.onPressed, this.width, this.height,
    this.size = SSizes.lg,
  });
  final double? width,height;
  final double? size;
  final IconData icon;
  final Color? color;
  final Color? bgColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: SHelperFunctions.isDarkMode(context)?Scolors.white:Scolors.white,

      ),
      child: IconButton(

        onPressed: (){},
        icon: Icon(Iconsax.heart5,size: size,color: color),
      ),
    );
  }
}