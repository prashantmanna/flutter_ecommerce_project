import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/data/repositories/personalisation/userController.dart';
import 'package:flutter_ecommerce_project/data/repositories/user/user_repository.dart';
import 'package:flutter_ecommerce_project/features/personalization/screens/profile/user_profile/ProfileScreen.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/Loaders.dart';
class UpdateNameController extends GetxController{
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserData = GlobalKey<FormState>();
  @override
  void onInit() {

    initializeNames();
    super.onInit();

  }

  Future<void> initializeNames() async{
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;

  }

  Future<void> updateUserName() async{
    try{
      if(!updateUserData.currentState!.validate()){
        Loaders.errorSnackBar(title: "Oh Snap",message: "Failed to Update Your Name");
        return;
      }
      Map<String,dynamic> name = {'firstName':firstName.text.trim(),'lastName':lastName.text.trim()};

      await userRepository.updateSingleField(name);
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      Loaders.successSnackBar(title: "Congrats",message: "Your name updated successfully");
      Get.off(()=>const ProfileScreen());
    }catch(e){
      Loaders.errorSnackBar(title: "Oh Snap",message: e.toString());
    }
  }
}