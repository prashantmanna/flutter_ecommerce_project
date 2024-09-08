import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';


import '../../../utils/constants/colors.dart';
class MyCartWidget extends StatelessWidget {
  const MyCartWidget({
    super.key,  this.iconColor, required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: const Icon(Iconsax.shopping_bag),color: iconColor,),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            //color: SHelperFunctions.isDarkMode(context)?Scolors.dark:Colors.white,
            decoration: BoxDecoration(
              color: SHelperFunctions.isDarkMode(context)?Colors.white:Scolors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: SHelperFunctions.isDarkMode(context)?Scolors.black:Colors.white,fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}