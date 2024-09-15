import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cart/BrandCard.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/allproducts/SortTableProduct.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: Text("Titan"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              Brandcard(showBorder: true),
              SizedBox(height: SSizes.spaceBtwItems,),
              SortTableProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
