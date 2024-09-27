import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/widgets/appbar/CustomAppBar.dart';
import 'package:flutter_ecommerce_project/data/repositories/personalisation/userController.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:flutter_ecommerce_project/utils/validators/validation.dart';
import 'package:iconsax/iconsax.dart';

class ReAuthenticateUser extends StatelessWidget {
  const ReAuthenticateUser({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Re-Authenticate User",),
      ),
      body: Padding(padding: const EdgeInsets.all(SSizes.defaultSpace),child:
        Form(
          key: controller.reAuthFormKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.verifyEmail,
                validator: (value) => SValidator.validateEmail(value),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: "Enter Email"
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwItems,),
              TextFormField(
                controller: controller.verifyPassword,
                obscureText: controller.hidePassword.value,
                validator: (value) => SValidator.validatePassword(value),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: "Enter Email"
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: ()=>controller.reAuthenticateEmailAndPassword(), child: const Text("Verify")),
              )

            ],
          ),
        ),),

    );
  }
}
