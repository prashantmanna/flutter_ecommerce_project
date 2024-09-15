import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/layouts/SGridLayout.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/allproducts/AllProducts.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/home/widgets/HomeSlider.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import '../../../../common/custom_shapes/PrimaryHeaderContainer.dart';
import '../../../../common/custom_shapes/container/mySearchBar.dart';
import '../../../../common/widgets/Homecategory/HomeCategory.dart';
import '../../../../common/widgets/product_text/Sectionheading.dart';
import '../../../../common/widgets/products_cards/ProductVertical.dart';
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
            const PrimaryHeaderContainer(
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
                SizedBox(height: SSizes.spaceBtwSections,)
                //body
              ],
            )),
            Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  const HomeSlider(
                    banners: [
                      SImages.banner1,
                      SImages.banner2,
                      SImages.banner3
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems,),
                  Sectionheading(title:"Popular Products",onPressed: ()=>Get.to(const AllProducts()),),
                  const SizedBox(height: SSizes.spaceBtwSections,),
                  //popular products
                  SGridLayout(itemCount: 4,mainAxisExtent: 275,
                      itemBuilder: (_,index) => const ProductVertical())
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}






