import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/cart/MyCart.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/appbar/CustomAppBar.dart';
import '../../../../../common/widgets/products_cart/MyCartWidget.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_string.dart';
class home_appbar extends StatelessWidget {
  const home_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(SText.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: Scolors.grey),),
          Text(SText.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: Scolors.white),),
        ],
      ),
      actions: [
        MyCartWidget(
          onPressed: ()=> Get.to(const MyCart()),
          iconColor: Scolors.white,
        )
      ],
    );
  }
}