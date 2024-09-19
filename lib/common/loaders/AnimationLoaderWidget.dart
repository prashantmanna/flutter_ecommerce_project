import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:lottie/lottie.dart';

class SAnimationLoaderWidget extends StatelessWidget{
  const SAnimationLoaderWidget({super.key, 
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onPressed

  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,width: MediaQuery.of(context).size.width * 0.8),
          const SizedBox(height: SSizes.defaultSpace,),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: SSizes.defaultSpace,
          ),
          showAction ? SizedBox(
            width: 250,
            child: OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: Scolors.dark
              ),
              child: Text(
                actionText!,
                style: Theme.of(context).textTheme.bodyMedium!.apply(color: Scolors.light),
              ),
            ),
          ) : const SizedBox(),
        ],
      ),
    );
  }
  
  
}