import 'package:flutter/material.dart';

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
              onTap: (){},
            );
          }),
    );
  }
}


