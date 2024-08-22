import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //title
              Text("Let's create your account",style: Theme.of(context).textTheme.headlineMedium,),

              const SizedBox(height: SSizes.spaceBtwSections,),
              //form
              Form(child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "first name",
                            prefixIcon: Icon(Iconsax.user),
                          ),
                          expands: false,
                        ),
                      ),
                      const SizedBox(width: SSizes.spaceBtwInputFields,),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "last name",
                            prefixIcon: Icon(Iconsax.user),
                          ),
                          expands: false,
                        ),
                      ),
                    ],
                  )
                ],
              ))
              
            ],
          ),
        ),
      ),
    );
  }
}
