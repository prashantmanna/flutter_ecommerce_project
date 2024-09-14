import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/device/device_utility.dart';

class MyProgressIndicator extends StatelessWidget {
  const MyProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(

          flex: 1,

          child: Text(text,style: Theme.of(context).textTheme.bodyMedium,),),
        Expanded(
          flex: 10,
          child: SizedBox(
            width: SDeviceUtility.getScreenWidth(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: Scolors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(Scolors.primaryColor),
            ),
          ),
        )
      ],
    );
  }
}
