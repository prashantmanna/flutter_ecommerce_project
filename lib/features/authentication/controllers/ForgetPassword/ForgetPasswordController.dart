import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/data/repositories/authentication/AuthenticationRepository.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/password_config/reset_password.dart';
import 'package:flutter_ecommerce_project/utils/constants/Loaders.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController{
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordKey = GlobalKey<FormState>();

  sendPasswordEmail() async{
    try {
      if(!forgetPasswordKey.currentState!.validate()){
        return;
      }
      await AuthenticationRepository.instance.sendPasswordEmailReset(email.text.trim());
      Loaders.successSnackBar(title: "Email Sent",message: "Email link has been sent to Reset your password");

      Get.to(ResetPassword(email: email.text.trim(),));
    }
    catch (e) {
      Loaders.errorSnackBar(title: "Oh Snap!",message: e.toString());
    }
  }
    resendPasswordResetEmail(String email) async{
      try {

        await AuthenticationRepository.instance.sendPasswordEmailReset(email);
        Loaders.successSnackBar(title: "Email Sent",message: "Email link has been sent to Reset your password");

      }
      catch (e) {
        Loaders.errorSnackBar(title: "Oh Snap!",message: e.toString());
      }
    }
}