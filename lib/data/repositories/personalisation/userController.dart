import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/data/repositories/models/UserModel.dart';
import 'package:flutter_ecommerce_project/data/repositories/user/user_repository.dart';
import 'package:flutter_ecommerce_project/utils/constants/Loaders.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  Future<void> saveUserRecord(UserCredential? userCredential) async{
    try{
      if(userCredential != null){
        final nameParts = UserModel.nameParts(userCredential.user!.displayName ?? "");
        final userName = UserModel.generateName(userCredential.user!.displayName ?? "");
        final user = UserModel(
            id: userCredential.user!.uid,
            firstName: nameParts[0],
            lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : " ",
            userName: userName,
            email: userCredential.user!.email ?? " ",
            phoneNumber: userCredential.user!.phoneNumber ?? " ",
            profilePicture: userCredential.user!.photoURL ?? "");
        await userRepository.saveUserData(user);

      }
    }catch(e){
      Loaders.errorSnackBar(title: "Data not saved",
      message: "Something went wrong!!");
    }
  }
}