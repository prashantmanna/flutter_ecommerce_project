import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';


class CircularFavourite extends StatelessWidget {
  const CircularFavourite(
      {super.key,
      this.width,
      this.height,
      this.color,
      this.size = SSizes.lg,
      required this.icon,
      this.onPressed,

      this.bgColor});

  final double? width;
  final double? height, size;
  final Color? color;
  final Color? bgColor;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor != null?bgColor!:(SHelperFunctions.isDarkMode(context)
                ? Colors.white.withOpacity(0.9)
                : Colors.white.withOpacity(0.9)),
        borderRadius: BorderRadius.circular(SSizes.sm)
      ),
      child: IconButton(
        onPressed: () {},
        icon: IconButton(
          icon: Icon(icon, color: color, size: size),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
