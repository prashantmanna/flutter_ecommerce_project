import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/data/repositories/authentication/AuthenticationRepository.dart';
import 'package:flutter_ecommerce_project/data/repositories/models/UserModel.dart';
import 'package:flutter_ecommerce_project/data/repositories/user/user_repository.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_project/features/personalization/screens/profile/user_profile/re_authenticate_user.dart';
import 'package:flutter_ecommerce_project/utils/constants/Loaders.dart';
import 'package:flutter_ecommerce_project/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserController extends GetxController{
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  final profileLoading = true.obs;
  final imageUploading = false.obs;
  final hidePassword = true.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

  Rx<UserModel> user = UserModel.empty().obs;
  Future<void> saveUserRecord(UserCredential? userCredential) async{
    try{
      await FetchUserRecord();
      if(user.value.id){
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
    }
    }
    catch(e){
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

  void deleteAccountWarningPopup() {
    Get.defaultDialog(
      contentPadding: const EdgeInsets.all(SSizes.md),
      title: "Delete Account",
      middleText: "Are you sure you want to delete your account permanently?",
      textConfirm: "Confirm",
      textCancel: "Cancel",
      onCancel: (){
        print("cancel button clicked");
        Navigator.of(Get.context!).pop();
      },
      onConfirm: ()
          {
            Navigator.of(Get.context!).pop();
          },
      barrierDismissible: true
    );
  }




  Future<void> deleteUserAccount() async{
    try{
      final auth = AuthenticationRepository.instance;
      final provider  = auth.authUser!.providerData.map((e)=>e.providerId).first;
      if(provider.isNotEmpty){
        if(provider == 'google.com'){
          await auth.signInWithGoogle();
          await auth.deleteAccount();
          Get.offAll(const Login());
        }else if(provider == "password"){
          Get.to(const ReAuthenticateUser());
        }
      }
    }catch (e){
      Loaders.errorSnackBar(title: "Oh Snap!",message: e.toString());

    }
  }

  Future<void> reAuthenticateEmailAndPassword() async{
    try{
      if(!reAuthFormKey.currentState!.validate()){
        return;
      }
      await AuthenticationRepository.instance.reAuthenticateWithEmailIdAndPassword(verifyEmail.text.trim(),verifyPassword.text.trim());
      await AuthenticationRepository.instance.deleteAccount();
      Get.offAll(const Login());
    }catch(e){
      Loaders.errorSnackBar(title: "Oh Snap!",message: e.toString());

    }
  }

  Future<void> uploadUserProfilePicture() async{
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
          imageQuality: 70,
          maxHeight: 512,
          maxWidth: 512);

      if (image != null) {
        final imageUrl = await userRepository.uploadImage(
            "Users/Images/Profile/", image);
        imageUploading.value = true;
        Map<String, dynamic> json = {
          "profilePicture": imageUrl
        };

        await userRepository.updateSingleField(json);

        user.value.profilePicture = imageUrl;
        user.refresh();
        Loaders.successSnackBar(title: "Congratulations",message: "Profile Updated Successfully");
      }
    }catch(e){
      Loaders.errorSnackBar(title: "Oh Snap",message: e.toString());
    }finally{
      imageUploading.value = false;
    }
  }

}