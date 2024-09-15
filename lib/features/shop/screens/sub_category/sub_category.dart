import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/banner/RoundedBanner.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/common/widgets/products_cards/ProductHorizontal.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
class SubCategory extends StatelessWidget {
  const SubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text('Sports Shoes'),showBackArrow: true,
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              const RoundedBanner(imageUrl: SImages.banner1,width: double.infinity,applyImageRadius: true,),
              const SizedBox(height: SSizes.spaceBtwSections,),
              Column(
                children: [
                  Sectionheading(title: "Sports Shoes",onPressed: (){},),
                  const SizedBox(height: SSizes.spaceBtwItems/2,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        separatorBuilder: (context,index)=> const SizedBox(width: SSizes.spaceBtwItems,),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=> const ProductHorizontal()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
