import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/features/personalization/screens/address/add_new_address.dart';
import 'package:flutter_ecommerce_project/features/personalization/screens/address/widgets/SingleAddress.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=>Get.to( const AddNewAddress()),
      backgroundColor: Scolors.primaryColor,
      child: const Icon(Iconsax.add,color: Colors.white,),),

      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text("Addresses",style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: const SingleChildScrollView(
        child:Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),

    );
  }
}

