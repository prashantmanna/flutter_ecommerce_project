import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

import '../../../../common/custom_shapes/CurvedEdgeWidget.dart';
class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgeWidget(
              child: Container(
                color: dark?Scolors.darkGrey:Scolors.light,
                child: Stack(

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
