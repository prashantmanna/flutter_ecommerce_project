import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWIdget.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/container/mySearchBar.dart';
import 'package:flutter_ecommerce_project/common/images/SCircularWidget.dart';
import 'package:flutter_ecommerce_project/common/layouts/SGridLayout.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleText.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleWIthVerifiedIcon.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomTabBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/banner/RoundedBanner.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/ProductCustomText.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cart/MyCartWidget.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/enums.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CustomAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [MyCartWidget(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: SHelperFunctions.isDarkMode(context)
                    ? Colors.black
                    : Colors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(SSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: SSizes.spaceBtwItems,
                      ),
                      const mySearchBar(
                        text: "Search In Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: SSizes.spaceBtwSections,
                      ),
                      Sectionheading(
                        title: "Featured Brands",
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: SSizes.spaceBtwItems,
                      ),
                      SGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: CircularWidget(
                                padding: const EdgeInsets.all(SSizes.sm),
                                showBorder: true,
                                bgColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    ///icon
                                    const Flexible(
                                      child: SCircularWidget(
                                        isNetworkImage: false,
                                        url: SImages.laptop1,
                                        bgColor: Colors.transparent,
                                        //overlayColor: SHelperFunctions.isDarkMode(context)?Colors.white:Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: SSizes.spaceBtwItems / 2,
                                    ),

                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const BrandTitleWithVerifiedIcon(
                                            title: "ASUS",
                                            brandTextSize: TextSizes.large,
                                          ),
                                          Text(
                                            '458 products',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                            overflow: TextOverflow.ellipsis,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
                bottom: const Customtabbar(
                  tabs: [
                    Tab(child: Text('Sports'),),
                    Tab(child: Text('Furniture'),),
                    Tab(child: Text('Electronics'),),
                    Tab(child: Text('Clothes'),),
                    Tab(child: Text('Cosmetics'),),
                    Tab(child: Text('Groceries'),),
                    Tab(child: Text('Jewellery'),),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              Padding(padding: EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  CircularWidget(
                    showBorder: true,
                    borderColor: Scolors.darkGrey,
                    bgColor: Colors.transparent,
                    margin: EdgeInsets.only(bottom: SSizes.spaceBtwItems),
                    child: ,
                  )
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
