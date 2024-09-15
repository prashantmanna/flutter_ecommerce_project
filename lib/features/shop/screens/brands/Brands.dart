import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/layouts/SGridLayout.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cart/BrandCard.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'BrandProduct.dart';
class Brands extends StatelessWidget {
  const Brands({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Brands"),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const Sectionheading(title: "Brands",showActionButton: false,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              //Brands
              SGridLayout(itemCount: 20,
                  mainAxisExtent: 80,
                  itemBuilder: (context,index)=> Brandcard(showBorder: true,onTap: ()=>Get.to(const BrandProduct()),))
            ],
          ),
        ),
      ),
    );
  }
}
