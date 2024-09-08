import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/device/device_utility.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
class Customtabbar extends StatelessWidget implements PreferredSizeWidget {
  const Customtabbar({
    super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? Colors.black:Colors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: Scolors.primaryColor,
        labelColor: dark ? Colors.white:Scolors.primaryColor,
        unselectedLabelColor: Scolors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SDeviceUtility.getAppBarHeight());
}
