import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/container/mySearchBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cart/MyCartWidget.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          MyCartWidget( onPressed: (){})
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_,innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: SHelperFunctions.isDarkMode(context)?Colors.black:Colors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: const EdgeInsets.all(SSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: SSizes.spaceBtwItems,),
                    const mySearchBar(text: "Search In Store",showBorder: true,showBackground: false,padding: EdgeInsets.zero,),
                    const SizedBox(height: SSizes.spaceBtwSections,),
                    Sectionheading(title: "Featured Brands",showActionButton: true,onPressed: (){},),
                    const SizedBox(height: SSizes.spaceBtwItems,),
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
