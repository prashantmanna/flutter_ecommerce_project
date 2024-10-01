import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/shimmer/SShimmer.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key,
    this.itemCount = 6});

  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated
        (
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,__)=> Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SShimmer(width: 55, height: 55,radius: 55,),
          SizedBox(height: SSizes.spaceBtwItems/2,),
          SShimmer(width: 55, height: 8)
        ],
      ), separatorBuilder: (_,__)=>SizedBox(width: SSizes.spaceBtwItems,),
          itemCount: itemCount),
    );
  }
}
