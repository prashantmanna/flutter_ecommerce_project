import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class mySearchBar extends StatelessWidget {
  const mySearchBar({
    super.key,
    required this.text,
    this.iconData = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace)
  });
  final String text;
  final IconData? iconData;
  final bool showBackground,showBorder;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: const SearchBar(
        hintText: "Search in Here",
        leading: Icon(Icons.search),
      )
    );
  }
}