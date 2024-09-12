import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/icons/CircularIcon.dart';
class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SCircularIcon(
        icon: Iconsax.profile_circle,
        width: 50,
        height: 50,

      ),
      title: Text("Prashant Manna",style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text("manprashant99@gmail.com",style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
      trailing: IconButton(onPressed: (){},icon: const Icon(Iconsax.edit),color: Colors.white,),
    );
  }
}
