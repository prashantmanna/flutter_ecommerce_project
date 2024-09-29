import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';


class SCircularIcon extends StatelessWidget {
  const SCircularIcon({
    super.key,
    required this.icon,
    this.color,
    this.bgColor,
    this.onPressed, this.width, this.height,
    this.size = SSizes.lg,
    this.isNetworkImage = false
  });
  final double? width,height;
  final double? size;
  final IconData icon;
  final Color? color;
  final Color? bgColor;
  final VoidCallback? onPressed;
  final bool isNetworkImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:bgColor

      ),
      child: IconButton(

        onPressed: onPressed,
        icon: Icon(icon,size: size,color: color),
      ),
    );
  }
}