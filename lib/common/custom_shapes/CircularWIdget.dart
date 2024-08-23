import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class CircularWidget extends StatelessWidget {
  const CircularWidget({
    super.key, this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.bgColor = Scolors.white, this.child,
  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Color bgColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: bgColor
      ),
      child: child,
    );
  }
}