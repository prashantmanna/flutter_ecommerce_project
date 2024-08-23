import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';

class AppDivider extends StatelessWidget {
  final String text;
  const AppDivider({
    super.key,
    required this.dark, required this.text,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
              color: dark ? Scolors.white : Scolors.dark,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            )),
        Text(
          text.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
              color: dark ? Scolors.white : Scolors.dark,
              thickness: 0.5,
              indent: 5,
              endIndent: 60,
            )),
      ],
    );
  }
}