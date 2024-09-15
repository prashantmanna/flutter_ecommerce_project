import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/signup/sucess_screen.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/cart/CartWidget.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/checkout/widgets/AmountSection.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/checkout/widgets/BillingAddressSection.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/checkout/widgets/CouponCode.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/checkout/widgets/PaymentSection.dart';
import 'package:flutter_ecommerce_project/navigation_menu.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

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
                    AmountSection(),
                    Divider(),
                    SizedBox(height: SSizes.spaceBtwItems,),
                    PaymentSection(),
                    SizedBox(height: SSizes.spaceBtwItems,),
                    BillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: ()=>Get.to(
          SuccessScreen(
              text: "Continue Shopping",
              image: SImages.paypal, title: "Payment Success", subtitle: "Your Item will be shipped soon", callback: () => Get.offAll(const NavigationMenu()))),
          child: const Text("Checkout \$770"),
        ),
      ),
    );
  }
}


