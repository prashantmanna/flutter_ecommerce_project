import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.bgColor,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.radius = SSizes.md,
  });

  final double? width,height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? bgColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double radius;
  @override
  Widget build(BuildContext context) {
    final ImageProvider imageProvider = isNetworkImage
        ? NetworkImage(imageUrl)
        : AssetImage(imageUrl);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius:applyImageRadius ? BorderRadius.all(Radius.circular(radius)) : BorderRadius.zero,
          border: border,
          color: bgColor,

        ),
        child: ClipRRect(
            borderRadius:applyImageRadius?BorderRadius.circular(radius):BorderRadius.zero,
            child: Image(
              image: imageProvider,
              fit: fit,
            )),
      ),
    );
  }
}