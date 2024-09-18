import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/pop_ups/full_screen_loader.dart';
import 'package:get/get.dart';
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
    }catch(e){

    }finally{

    }
  }
}