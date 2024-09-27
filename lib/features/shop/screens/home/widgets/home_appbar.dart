import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/shimmer/SShimmer.dart';
import 'package:flutter_ecommerce_project/data/repositories/personalisation/userController.dart';
import 'package:flutter_ecommerce_project/features/shop/screens/cart/MyCart.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/appbar/CustomAppBar.dart';
import '../../../../../common/widgets/products_cart/MyCartWidget.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_string.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    // Use Get.find() to fetch the existing UserController instance
    final controller = Get.put(UserController());

    return CustomAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            SText.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Scolors.grey),
          ),
          Obx(() {
            if (controller.profileLoading.value) {
              return const SShimmer(width: 80, height: 15);
            } else {
              final fullName = controller.user.value.fullName;
              print(controller.user.value.fullName);
              return Text(
                controller.user.value.fullName,style: Theme.of(context).textTheme.headlineMedium?.apply(color: Colors.white)
              );
            }
          })
        ],
      ),
      actions: [
        MyCartWidget(
          onPressed: () => Get.to(const MyCart()),
          iconColor: Scolors.white,
        ),
      ],
    );
  }
}
