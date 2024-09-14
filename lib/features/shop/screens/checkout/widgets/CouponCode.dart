import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

import '../../../../../common/custom_shapes/CircularWidget.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return CircularWidget(
      showBorder: true,
      bgColor: dark ? Scolors.dark : Colors.white,
      padding: EdgeInsets.only(top: SSizes.sm,bottom: SSizes.sm,right: SSizes.sm,left: SSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Have a promo code? Enter Here",
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none
              ),
            ),
          ),
          SizedBox(
              width: 80,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(foregroundColor: dark ? Colors.white.withOpacity(0.5) : Scolors.dark.withOpacity(0.5),
                      backgroundColor: Scolors.grey.withOpacity(0.2),
                      side: BorderSide(color: Scolors.grey.withOpacity(0.1))
                  ),

                  child: Text("Apply")))
        ],
      ),
    );
  }
}