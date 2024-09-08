import 'package:flutter/material.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';

class SCircularWidget extends StatelessWidget {
  const SCircularWidget({
    super.key,
     this.height = 56,
     this.width = 56,
     this.padding = SSizes.sm,
    this.bgColor,
    this.overlayColor,
    required this.url,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
  });
  final double height,width,padding;
  final Color? bgColor;
  final Color? overlayColor;
  final String url;
  final BoxFit? fit;
  final bool isNetworkImage;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: SHelperFunctions.isDarkMode(context)?Colors.black:Colors.white,
        borderRadius: BorderRadius.circular(100),

      ),
      child: Center(

        child: Image(
          fit: fit,
          image: isNetworkImage?NetworkImage(url):AssetImage(url) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}