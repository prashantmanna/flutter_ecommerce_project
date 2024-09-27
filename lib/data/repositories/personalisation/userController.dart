import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/data/repositories/authentication/AuthenticationRepository.dart';
import 'package:flutter_ecommerce_project/data/repositories/models/UserModel.dart';
import 'package:flutter_ecommerce_project/data/repositories/user/user_repository.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_project/utils/constants/Loaders.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  final profileLoading = true.obs;
  final hidePassword = true.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

  Rx<UserModel> user = UserModel.empty().obs;
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

  @override
  void onInit() {
    FetchUserRecord();
    super.onInit();

  }

  Future<void> FetchUserRecord() async {
    try {
      profileLoading.value = true;
      final fetchedUser = await userRepository.fetchUserData();
      user.value = fetchedUser;
        } catch (e) {
      user.value = UserModel.empty();
    } finally {
      profileLoading.value = false;
    }
  }

  void deleteAccountWarningPopup(){
    Get.defaultDialog(
      contentPadding: EdgeInsets.all(SSizes.md),
      title: "Delete Account",
      middleText:
        "Are you sure you want to delete your account permanently? ",
      confirm: ElevatedButton(onPressed: () async=> deleteUserAccount(),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            side: BorderSide(color: Colors.red)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: SSizes.lg),
            child: Text("Delete"),
          )),
      cancel: OutlinedButton(onPressed: ()=>Navigator.of(Get.overlayContext!).pop(),
          child: Text("Cancel"))
    );
  }

  void deleteUserAccount() async{
    try{
      final auth = AuthenticationRepository.instance;
      final provider  = auth.authUser!.providerData.map((e)=>e.providerId).first;
      if(provider.isNotEmpty){
        if(provider == 'google.com'){
          await auth.signInWithGoogle();
          await auth.deleteAccount();
          Get.offAll(Login());
        }else if(provider == "password"){
          Get.to(ReAuthLoginForm());
        }
      }
    }
  }
}