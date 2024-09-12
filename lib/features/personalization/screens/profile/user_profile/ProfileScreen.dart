import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/images/SCircularWidget.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/features/personalization/screens/profile/ProfileSettings.dart';
import 'package:flutter_ecommerce_project/features/personalization/screens/profile/user_profile/ProfileInfo.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        showBackArrow: true,
        title: Text("Profile",),

      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          children: [
           SizedBox(
           width: double.infinity,
           child: Column(
             children: [
    const SCircularWidget(url: SImages.profile,width: 80,height: 80,),
    TextButton(onPressed: (){}, child: const Text("Change Profile Picture"))
             ],
           ),
           ),
            const SizedBox(height: SSizes.spaceBtwItems/2,),
            const Divider(),
            const SizedBox(height: SSizes.spaceBtwItems,),
            const Sectionheading(title: "Profile Information",showActionButton: false,),
            const SizedBox(height: SSizes.spaceBtwItems,),
            ProfileInfo(title: "Name", value: "Prashant Manna", onPressed: (){}),
            ProfileInfo(title: "Username", value: "Prashant Manna", onPressed: (){}),
            const SizedBox(height: SSizes.spaceBtwSections/2,),
            const Sectionheading(title: "Personal Information",showActionButton: false,),
            const SizedBox(height: SSizes.spaceBtwSections,),
            ProfileInfo(title: "User ID", value: "9304848", onPressed: (){},icon: Iconsax.copy,),
            ProfileInfo(title: "E-mail", value: "manprashant99@gmail.com", onPressed: (){},icon: Iconsax.copy,),
            ProfileInfo(title: "Mobile", value: "9307381649", onPressed: (){},icon: Iconsax.copy,),
            ProfileInfo(title: "Gender", value: "Male", onPressed: (){}),
            ProfileInfo(title: "Date of Birth", value: "9 Feb,2004", onPressed: (){}),
            const SizedBox(height: SSizes.spaceBtwItems,),
            const Divider(),
            const SizedBox(height: SSizes.spaceBtwItems,),
            Center(
              child:
              TextButton(
                onPressed: ()=> Get.to(const ProfileSettings()),
                child: const Text(
                  "Close Account",style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),),

      ),
    );
  }
}

