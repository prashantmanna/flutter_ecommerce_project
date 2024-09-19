import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce_project/data/repositories/authentication/AuthenticationRepository.dart';
import 'package:flutter_ecommerce_project/data/repositories/user/user_repository.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/signup/verify_email.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/models/UserModel.dart';
import '../../../../utils/constants/Loaders.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/device/NetworkManager.dart';
import '../../../../utils/pop_ups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  final hidePassword = true.obs;

  final PrivacyPolicy = true.obs;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  void signup_key_controller() async {
    try {
      // Validate the form first
      if (!signUpFormKey.currentState!.validate()) {
        return;
      }

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        await Loaders.errorSnackBar(title: "No Internet Connection", message: "Please check your internet connection and try again.");
        return;
      }

      if (!PrivacyPolicy.value) {
        Loaders.warningSnackBar(
            title: "Accept Privacy Policy",
            message: "In order to create an account, you must read and accept the privacy policy & terms of use"
        );
        return;
      }

      // Show loading animation
      FullScreenLoader.openLoadingDialog("We are processing your information", SImages.loading);

      final userCredential = await AuthenticationRepository.instance.registerWithEmailIdAndPassword(email.text.trim(), password.text.trim());
      final newUser = UserModel(
          id:userCredential.user!.uid,
          firstName:firstName.text.trim(),
          lastName:lastName.text.trim(),
          userName:userName.text.trim(),
          email:email.text.trim(),
          phoneNumber:phoneNumber.text.trim(),
          profilePicture:'');
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserData(newUser);
      Loaders.successSnackBar(title: "Congratulations",message: "Your Account has been created! verify your email to continue");

      Get.to(const VerifyEmail());
      // Proceed with the signup process
      // Your signup logic here
    } catch (e) {
      await Loaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}
