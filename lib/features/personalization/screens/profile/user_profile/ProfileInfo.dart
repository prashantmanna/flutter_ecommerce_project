import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    required this.title,
    required this.value,
    required this.onPressed,
    this.icon = Iconsax.arrow_right_3,
  });

  final String title,value;
  final VoidCallback onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwItems/2),
        child: Row(

          children: [
            Expanded(
                flex: 3,
                child: Text(title,style: Theme.of(context).textTheme.bodySmall!.apply(overflow: TextOverflow.ellipsis),)),
            Expanded(
                flex: 5,
                child: Text(value,style: Theme.of(context).textTheme.bodyMedium!.apply(overflow: TextOverflow.ellipsis),)),
            Expanded(child: Icon(icon,size: 18,)),
          ],
        ),
      ),
    );
  }
}
