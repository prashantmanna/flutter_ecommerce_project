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
      // FullScreenLoader.openLoadingDialog("We are processing your information", SImages.loading);

      // Proceed with the signup process and debug the response
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailIdAndPassword(email.text.trim(), password.text.trim());

      // Ensure all fields are strings before creating the UserModel
      final newUser = UserModel(
        id: userCredential.user!.uid.toString(),
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',  // Empty string in case profile picture isn't used
      );

      // Stop the loader
      // FullScreenLoader.stopLoading();

      // Save user data
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserData(newUser);

      // Show success snackbar
      Loaders.successSnackBar(
          title: "Congratulations",
          message: "Your Account has been created! Verify your email to continue");

      // Delay to allow the snackbar to disappear before navigating
      await Future.delayed(Duration(seconds: 2));  // Adjust the duration as needed

      // Navigate to the VerifyEmail screen
      Get.to(const VerifyEmail());

    } catch (e) {
      print(e.toString());

      // Stop the loader if an error occurs
      FullScreenLoader.stopLoading();

      // Handle errors
      if (e is TypeError) {
        await Loaders.errorSnackBar(
            title: "Data Type Error", message: "Unexpected data format. Please try again.");
      } else {
        await Loaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
      }
    }
  }




}
