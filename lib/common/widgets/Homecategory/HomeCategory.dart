import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/sub_category/sub_category.dart';
import 'package:get/get.dart';

import '../../../utils/constants/image_strings.dart';
import '../product/VerticalTextImage.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return  VerticalImageText(
              image: SImages.product2,
              title: 'Laptop',
              onTap: ()=>Get.to(SubCategory()),
            );
          }),
    );
  }
}


