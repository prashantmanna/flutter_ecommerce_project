import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/text_string.dart';
import '../../../../../common/custom_shapes/PrimaryHeaderContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppbar(title: Column(
                    children: [
                      Text(SText.homeAppbarTitle,style: Theme.of(context).textTheme.headlineMedium!.apply(color: Scolors.white),)
                    ],
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}






