import 'package:flutter/material.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_string.dart';
class AppColum extends StatelessWidget {
  const AppColum({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 120,
          image:
          AssetImage(dark ? SImages.whiteLogo : SImages.darkLogo),
        ),
        const SizedBox(height: 20,),
        Text(
          SText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: SSizes.sm,
        ),
        Text(
          SText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}