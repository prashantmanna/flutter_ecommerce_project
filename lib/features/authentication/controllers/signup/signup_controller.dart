import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/constants/Loaders.dart';
import 'package:flutter_ecommerce_project/utils/pop_ups/full_screen_loader.dart';
import 'package:get/get.dart';

import '../../../../utils/device/NetworkManager.dart';
class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();

  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  Future<void> signup_key_controller() async{
    try{
      FullScreenLoader.openLoadingDialog("We are processing your information", "");
      //check internet connection
      final isConnected = await NetworkManager.instance.isConnected();

      if(!isConnected){
        FullScreenLoader.stopLoading();
        return;
      }

      if(!signUpFormKey.currentState!.validate()){
        FullScreenLoader.stopLoading();
        return;
      }
    }catch(e){
      Loaders.errorSnackBar(title: "Oh Snap! ",message: e.toString());
    }finally{
      FullScreenLoader.stopLoading();
    }
  }
}