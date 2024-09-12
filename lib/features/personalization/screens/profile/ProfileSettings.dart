import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/PrimaryHeaderContainer.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/common/widgets/product_text/Sectionheading.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_project/features/personalization/screens/profile/user_profile/ProfileScreen.dart';
import 'package:flutter_ecommerce_project/features/personalization/screens/profile/user_profile/UserProfileTitle.dart';
import 'package:flutter_ecommerce_project/features/personalization/screens/profile/user_profile/settings_menu.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppbar(
                    title: Text("Account",
                    style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),),

                  ),
                  ///user profileList
                  UserProfileTitle(onPressed: ()=>Get.to(ProfileScreen()),),
                  const SizedBox(height: SSizes.spaceBtwItems,),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),
            child: Column(
              children: [
                const Sectionheading(title: "Account Settings",showActionButton: false,),
                const SizedBox(height: SSizes.spaceBtwItems,),
                SettingsMenu(icon: Iconsax.safe_home, title: "My Address", subtitle: "Set shopping delivery address",onTap: (){},),
                SettingsMenu(icon: Iconsax.shopping_cart, title: "My Cart", subtitle: "Add ,remove products and save to checkout",onTap: (){},),
                SettingsMenu(icon: Iconsax.bag_tick, title: "My Orders", subtitle: "In-progress and completed orders",onTap: (){},),
                SettingsMenu(icon: Iconsax.bank, title: "Bank Account", subtitle: "Withdraw balance to registered bank account",onTap: (){},),
                SettingsMenu(icon: Iconsax.discount_shape, title: "My Coupons", subtitle: "List of all the discounted coupons",onTap: (){},),
                SettingsMenu(icon: Iconsax.notification, title: "Notifications", subtitle: "Set Any kind of notification message",onTap: (){},),
                SettingsMenu(icon: Iconsax.security_card, title: "Account Privacy", subtitle: "Manage data usage and connected accounts",onTap: (){},),

                const SizedBox(height: SSizes.spaceBtwSections,),
                const Sectionheading(title: "App Settings",showActionButton: false,),
                const SizedBox(height: SSizes.spaceBtwItems,),
                const SettingsMenu(icon: Iconsax.document_upload, title: "Load Data", subtitle: "Upload your Credentials"),
                SettingsMenu(icon: Iconsax.location, title: "Geolocation",
                    subtitle: "Set recommendation based on location",
                    trailing: Switch(value: true,onChanged: (value){}),),
                SettingsMenu(icon: Iconsax.security_user, title: "Safe Mode",
                    subtitle: "Search result is safe for all users",
                    trailing: Switch(value: false,onChanged: (value){},),),
                SettingsMenu(icon: Icons.image, title: "No Image Quality",
                    subtitle: "Set image quality to be seen",
                    trailing: Switch(value: false,onChanged: (value){},),),
                const SizedBox(height: SSizes.spaceBtwSections,),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: ()=>Get.to(Login()),
                    child: const Text("Logout"),
                  ),
                )
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

