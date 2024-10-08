import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {super.key,
        this.title,
        this.showBackArrow = false,
        this.leadingIcon,
        this.actions,
        this.leadingOnPressed,
        this.toolbarHeight,
        this.color = Colors.black});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final Color? color;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final double? toolbarHeight;
  @override
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
          onPressed: () => Get.back(),
          icon:  Icon(Iconsax.arrow_left,color: dark ? Colors.white : Colors.black,),
        )
            : leadingIcon != null
            ? IconButton(
          onPressed: leadingOnPressed,
          icon: Icon(leadingIcon),
        )
            : null,
        title: title,
        actions: actions,
      ),
    );
  }


  @override
  Size get preferredSize => Size.fromHeight(SDeviceUtility.getAppBarHeight());
}
