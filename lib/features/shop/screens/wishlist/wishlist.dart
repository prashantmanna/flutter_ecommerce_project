import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/icons/CircularIcon.dart';
import 'package:flutter_ecommerce_project/common/layouts/SGridLayout.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cards/ProductVertical.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/home/home.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text("Wishlist",style: Theme.of(context).textTheme.headlineMedium,),

        actions: [
          SCircularIcon(icon: Iconsax.add,onPressed: ()=> Get.off(const HomeScreen()),)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              SGridLayout(itemCount: 8, itemBuilder: (_,index)=> const ProductVertical())
            ],
          ),
        ),
      ),
    );
  }
}
