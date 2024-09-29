import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/shimmer/SShimmer.dart';

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
        
          child:
          isNetworkImage ?  CachedNetworkImage(imageUrl: url,fit: fit,color: overlayColor,
            progressIndicatorBuilder: (context,url,downloadProgress)=>SShimmer(width: 55, height: 55,radius: 55,),
            errorWidget: (context,url,error)=> Icon(Icons.error),
          ):Image(
            fit: fit,
            image: isNetworkImage?NetworkImage(url):AssetImage(url) as ImageProvider,
            color: overlayColor,
          ),
        ),
      ),
    );
  }
}