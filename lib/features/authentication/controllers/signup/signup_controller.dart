import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce_project/data/repositories/authentication/AuthenticationRepository.dart';
import 'package:flutter_ecommerce_project/data/repositories/user/user_repository.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/signup/verify_email.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/models/UserModel.dart';
import '../../../../utils/constants/Loaders.dart';
import '../../../../utils/constants/image_strings.dart';
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

      if (!PrivacyPolicy.value) {
        Loaders.warningSnackBar(
            title: "Accept Privacy Policy",
            message: "In order to create an account, you must read and accept the privacy policy & terms of use");
        return;
      }

      // Show loading animation
      FullScreenLoader.openLoadingDialog("We are processing your information", SImages.loading);

      // Proceed with the signup process and debug the response
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailIdAndPassword(
          email.text.trim(), password.text.trim());

      // Debugging the response
      print("User Credential: ${userCredential.runtimeType}"); // Check the type of userCredential
      print("User UID: ${userCredential.user!.uid.runtimeType}"); // Check if UID is a string

      // Ensure all fields are strings before creating the UserModel
      final newUser = UserModel(
        id: userCredential.user!.uid.toString(),  // Ensure the UID is a string
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',  // Empty string in case profile picture isn't used
      );

      // Debug new user data to ensure the fields are correct
      print("New User: ${newUser.runtimeType}");

      // Make sure that the repository correctly processes the user model
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserData(newUser);

      Loaders.successSnackBar(
          title: "Congratulations",
          message: "Your Account has been created! Verify your email to continue");

      Get.to(const VerifyEmail());
    } catch (e) {
      print(e.toString());

      // Safeguard error handling in case data was of wrong type
      if (e is TypeError) {
        await Loaders.errorSnackBar(
            title: "Data Type Error", message: "Unexpected data format. Please try again.");
      } else {
        await Loaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
      }

      // Debug print statements to track data

      print("Email: ${email.text.runtimeType}");
      print("Password: ${password.text.runtimeType}");
      print("Username: ${userName.text.runtimeType}");
      print("First Name: ${firstName.text.runtimeType}");
      print("Last Name: ${lastName.text.runtimeType}");
      print("Phone Number: ${phoneNumber.text.runtimeType}");

    }
  }
}
