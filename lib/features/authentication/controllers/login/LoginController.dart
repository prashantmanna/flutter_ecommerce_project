import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/data/repositories/authentication/AuthenticationRepository.dart';
import 'package:flutter_ecommerce_project/data/repositories/personalisation/userController.dart';
import 'package:flutter_ecommerce_project/utils/constants/Loaders.dart';
import 'package:flutter_ecommerce_project/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce_project/utils/pop_ups/full_screen_loader.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class LoginController extends GetxController{
  static LoginController get instance => Get.find();
  final userController = Get.put(UserController());
  final email = TextEditingController();
  final password = TextEditingController();
  final localStorage = GetStorage();
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    email.text = localStorage.read("Remember_Me_Email") ?? "";
    password.text = localStorage.read("Remember_Me_Password") ?? "";
  }

  Future<void> login() async{
    try{
      // FullScreenLoader.openLoadingDialog("Logging you in...", SImages.loading);
      if(!loginFormKey.currentState!.validate()){
        FullScreenLoader.stopLoading();
        return;
      }

      if(!rememberMe.value){
        localStorage.write("Remember_Me_Email", email.text.trim());
        localStorage.write("Remember_Me_Password", password.text.trim());
      }

      final userCredentials = await AuthenticationRepository.instance.loginWithEmailIdAndPassword(email.text.trim(), password.text.trim());
      Loaders.successSnackBar(
          title: "Congratulations",
          message: "Your Account has been created! Verify your email to continue");

      await Future.delayed(Duration(seconds: 2));
      // FullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();
    }catch(e){
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: "Oh Snap1",message: e.toString());
    }
  }

  Future<void> googleSignIn() async{
    try{
      // FullScreenLoader.openLoadingDialog("Logging you in....", SImages.loading);
      final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();
      await userController.saveUserRecord(userCredentials);
      // FullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();
    }catch(e){
      // FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: "Oh Snap !",message: e.toString());
    }
  }

}