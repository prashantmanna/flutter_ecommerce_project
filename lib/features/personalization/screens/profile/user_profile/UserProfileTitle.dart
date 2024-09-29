import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/data/repositories/personalisation/userController.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/icons/CircularIcon.dart';
class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({
    super.key,
    this.onPressed,

  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return ListTile(
      leading:  const SCircularIcon(
        icon: CupertinoIcons.person,
        width: 50,
        height: 50,
        color: Colors.red,
      ),
      title: Text(controller.user.value.fullName,style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text(controller.user.value.email,style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
      trailing: IconButton(onPressed: onPressed,icon: const Icon(Iconsax.edit),color: Colors.white,),
    );
  }
}
