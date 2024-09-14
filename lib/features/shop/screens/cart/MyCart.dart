import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/title_text/BrandTitleWIthVerifiedIcon.dart';
import 'package:flutter_ecommerce_project/common/title_text/product_title_text.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/banner/RoundedBanner.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text("Cart",style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_,index)=>const Column(
              children: [
                Row(
                  children: [
                    RoundedBanner(imageUrl: SImages.mobile3,
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(SSizes.sm),),
                    SizedBox(width: SSizes.spaceBtwItems,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BrandTitleWithVerifiedIcon(title: "Motorola"),
                        product_title_text(title: "Motorola G64 5G"),

                      ],
                    )
                  ],
                )
              ],
            ),
            separatorBuilder: (_,__)=>const SizedBox(height: SSizes.spaceBtwSections,),
            itemCount: 4,
          ),
        ),
      ),
    );
  }
}
