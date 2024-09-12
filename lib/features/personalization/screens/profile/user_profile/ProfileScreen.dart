import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/icons/CircularIcon.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(SSizes.defaultSpace)
        ,
        child: Column(
          //profile picture
          children: [

          ],
        ),),
      ),
    );
  }
}
