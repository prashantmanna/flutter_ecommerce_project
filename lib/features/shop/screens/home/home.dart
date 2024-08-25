import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWIdget.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/home/widgets/HomeSlider.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/home/widgets/ProductVertical.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import '../../../../common/custom_shapes/PrimaryHeaderContainer.dart';
import '../../../../common/custom_shapes/container/mySearchBar.dart';
import '../../../../common/widgets/Homecategory/HomeCategory.dart';
import '../../../../common/widgets/banner/RoundedBanner.dart';
import '../../../../common/widgets/products/ProductVertical.dart';
import '../../../../common/widgets/text/SectionHeading.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
                child: Column(
              children: [
                home_appbar(),
                SizedBox(
                  height: SSizes.spaceBtwSections,
                ),
                //search bar
                mySearchBar(
                  text: "Search in here",
                ),
                SizedBox(
                  height: SSizes.spaceBtwSections,
                ),
                Padding(
                  padding: EdgeInsets.only(left: SSizes.defaultSpace),
                  child: Column(
                    children: [
                      popular(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Scolors.white,
                      ),
                      SizedBox(
                        height: SSizes.spaceBtwItems,
                      ),
                      HomeCategories()
                    ],
                  ),
                ),
                //body
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  HomeSlider(
                    banners: [
                      SImages.banner1,
                      SImages.banner2,
                      SImages.banner3
                    ],
                  ),
                  ProductVertical()
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}




