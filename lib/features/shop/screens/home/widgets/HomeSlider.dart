
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/home/home_controller/home_controller.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:get/get.dart';

import '../../../../../common/custom_shapes/CircularWidget.dart';
import '../../../../../common/widgets/banner/RoundedBanner.dart';
import '../../../../../utils/constants/sizes.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners.map((url) => RoundedBanner(imageUrl: url,fit: BoxFit.cover,)).toList()
        ),
        const SizedBox(
          height: SSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularWidget(
                  width: 20,
                  height: 4,
                  bgColor: controller.carouselCurrentIndex.value == i
                      ? Scolors.primaryColor
                      : Scolors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        )
      ],
    );
  }
}
