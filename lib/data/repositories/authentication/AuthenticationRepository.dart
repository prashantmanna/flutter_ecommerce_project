import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/onboardingpage/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance => Get.find();
  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async{
    deviceStorage.writeIfNull('isFirstTime',true);
    deviceStorage.read('isFirstTime') != true ? Get.offAll(() => Login()) : Get.offAll(() => OnboardingScreen());
  }
}