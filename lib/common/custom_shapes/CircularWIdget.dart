import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';

import '../../utils/constants/colors.dart';

class CircularWidget extends StatelessWidget {
  const CircularWidget({
    super.key, this.width,
    this.height,
    this.radius = SSizes.cardRadiusLg,
    this.padding,
    this.bgColor = Scolors.white,
    this.child,
    this.margin,
    this.showBorder = false,
    this.borderColor = Scolors.borderPrimary
  });
  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final Color bgColor;
  final Widget? child;
  final Color borderColor;
  final EdgeInsets? margin;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: bgColor,
          border: showBorder ? Border.all(color: borderColor) : null
      ),
      child: child,
    );
  }
}