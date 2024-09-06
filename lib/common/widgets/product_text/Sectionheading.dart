import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';

class Sectionheading extends StatelessWidget {
  const Sectionheading({super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = "View All",
    this.onPressed});

  final Color? textColor;
  final bool showActionButton;
  final String title,buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,

        ),
        if(showActionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle,
          style: dark ? Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.lightBlueAccent) : Theme.of(context).textTheme.headlineSmall!.apply(color: CupertinoColors.systemBlue),
        ))
      ],
    );
  }
}
