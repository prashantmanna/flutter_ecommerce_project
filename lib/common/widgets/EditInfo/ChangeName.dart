import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/validators/validation.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:iconsax/iconsax.dart';

import '../../../features/authentication/controllers/UpdateNameController/UpdateNameController.dart';
class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: CustomAppbar(
        title: Text("Change Name",style: Theme.of(context).textTheme.headlineSmall,),
        showBackArrow: true,
      ),
      body: Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Use real name for easy verification. This name will appear on several pages"
          ,style: Theme.of(context).textTheme.labelMedium,),
          const SizedBox(height: SSizes.spaceBtwSections,),
          Form(
            key: controller.updateUserData,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.firstName,
                  validator: (value)=> SValidator.validateEmptyText("First Name", value),
                  expands: false,
                  decoration:const InputDecoration(
                    labelText: "Enter First Name",
                    prefixIcon: Icon(Iconsax.user)
                  )
                ),
                const SizedBox(height: SSizes.spaceBtwItems,),
                TextFormField(
                    controller: controller.lastName,
                    validator: (value)=> SValidator.validateEmptyText("First Name", value),
                    expands: false,
                    decoration:const InputDecoration(
                        labelText: "Enter Last Name",
                        prefixIcon: Icon(Iconsax.user)
                    )
                ),
                const SizedBox(height: SSizes.spaceBtwItems,),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: ()=> controller.updateUserName(), child: const Text("Update")))
              ],
            ),
          )

        ],
      ),),

    );
  }
}
