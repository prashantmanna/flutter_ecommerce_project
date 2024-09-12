import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';


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
        color: SHelperFunctions.isDarkMode(context)?Colors.transparent:Colors.transparent,

      ),
      child: IconButton(

        onPressed: (){},
        icon: Icon(icon,size: size,color: color),
      ),
    );
  }
}