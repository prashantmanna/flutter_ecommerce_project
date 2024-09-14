import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/title_text/product_price_text.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

import 'AddAndRemoveButton.dart';
import 'CartItem.dart';
class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppbar(
        title: Text("Cart",style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_,index)=> const Column(
            children: [
              CartItem(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      SizedBox(width: 80,),
                      AddAndRemoveButton(),
                    ],
                  ),
                    product_price_text(price: "750")
              ])
            ],
          ),
          separatorBuilder: (_,__)=>const SizedBox(height: SSizes.spaceBtwSections,),
          itemCount: 10,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: (){},
          child: Text("Checkout \$750.00"),
        ),
      ),
    );
  }
}

