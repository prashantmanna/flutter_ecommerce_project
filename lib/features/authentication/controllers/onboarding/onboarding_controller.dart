import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
      final storage = GetStorage();
      print(storage.read("isFirstTime"));
      storage.write('isFirstTime', false);
      Get.offAll(const Login());
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