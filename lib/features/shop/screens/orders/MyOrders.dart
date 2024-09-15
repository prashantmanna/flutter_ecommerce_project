import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/orders/widgets/OrderItems.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text("My Orders",style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(SSizes.defaultSpace),
        child: OrderItems(),
      ),
    );
  }
}
