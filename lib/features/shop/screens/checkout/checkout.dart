import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/cart/CartWidget.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/checkout/widgets/BillingAddress.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/checkout/widgets/BillingPayment.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/checkout/widgets/CouponCode.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text("Order Review",style: Theme.of(context).textTheme.headlineSmall,),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              const CartWidget(showAddRemoveButton: false,),
              const SizedBox(height: SSizes.spaceBtwItems,),
              const CouponCode(),
              const SizedBox(height: SSizes.spaceBtwSections,),
              CircularWidget(
                showBorder: true,
                bgColor: dark ? Colors.black : Colors.white,
                padding: const EdgeInsets.all(SSizes.md),
                child: const Column(
                  children: [
                    BillingPayment(),
                    Divider(),
                    SizedBox(height: SSizes.spaceBtwItems,),
                    BillingAddress(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


