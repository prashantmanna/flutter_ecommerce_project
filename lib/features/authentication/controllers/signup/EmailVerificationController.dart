import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/data/repositories/authentication/AuthenticationRepository.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/signup/sucess_screen.dart';
import 'package:flutter_ecommerce_project/utils/constants/Loaders.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController{
  static VerifyEmailController get instance => Get.find();
  @override
  void onInit() {

    sendEmailVerification();

    super.onInit();
    setTimer();
  }
  sendEmailVerification() async{
    try{
      await AuthenticationRepository.instance.sendEmail();
      Loaders.successSnackBar(title: "Email Sent",message: "Please check your inbox and verify your email");
    }catch(e){
      Loaders.errorSnackBar(title: "Oh Snap!!",message: e.toString());
    }
  }
  void setTimer() {
    Timer.periodic(const Duration(seconds: 5), (timer) async {  // Check every 5 seconds
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;

      // If the email is verified, stop the timer and navigate to the success screen
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccessScreen(
          text: "Verified",
          image: SImages.sucess_email,
          title: "Email Verified",
          subtitle: "Your email has been verified successfully",
          callback: () => AuthenticationRepository.instance.screenRedirect(),
        ));
      }
    });
  }

  Future<void> checkEmailVerified() async {
    final currUser = FirebaseAuth.instance.currentUser;

    // Check if the user's email is already verified
    if (currUser != null && currUser.emailVerified) {
      Get.off(() => SuccessScreen(
        text: "Verified",
        image: SImages.sucess_email,
        title: "Email Verified",
        subtitle: "Your email is successfully registered",
        callback: () => AuthenticationRepository.instance.screenRedirect(),
      ));
    }
  }
}