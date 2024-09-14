import 'package:flutter/material.dart';

import '../../../../common/title_text/product_price_text.dart';
import '../../../../utils/constants/sizes.dart';
import 'AddAndRemoveButton.dart';
import 'CartItem.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
    this.showAddRemoveButton = true
  });

  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_,index)=> Column(
        children: [
          const CartItem(),
          if(showAddRemoveButton) const SizedBox(height: SSizes.spaceBtwItems,),
          if(showAddRemoveButton)const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 80,),
                    AddAndRemoveButton(),
                  ],
                ),
                product_price_text(price: "750")
              ])
        ],
      ),
      separatorBuilder: (_,__)=>const SizedBox(height: SSizes.spaceBtwSections,),
      itemCount: 2,
    );
  }
}
