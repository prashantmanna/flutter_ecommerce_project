import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/loaders/AnimationLoaderWidget.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class FullScreenLoader{
  static void openLoadingDialog(String text,String animation){
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_)=> PopScope(child: Container(
          color: SHelperFunctions.isDarkMode(Get.context!) ? Scolors.dark : Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              SAnimationLoaderWidget(text:text,animation:animation),
            ],
          ),
        )
        )
    );
  }


    static stopLoading() {
       Navigator.of(Get.overlayContext!).pop();
    }



}