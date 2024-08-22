import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> current_index = 0.obs;
  void updatePageIndicator(index) => current_index.value = index;

  void dotNavigationClick(index) {
  current_index.value = index;
  pageController.jumpToPage(index);
}
  void nextPage(){
    if(current_index.value == 2){
      //Get.to(login);
    }else{
      int page = current_index.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage(){
    current_index.value = 2;
    pageController.jumpToPage(2);
  }
}