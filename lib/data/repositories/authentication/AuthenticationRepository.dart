import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/onboardingpage/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance => Get.find();
  final deviceStorage = GetStorage();
  final auth = FirebaseAuth.instance;
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async{
    deviceStorage.writeIfNull('isFirstTime',true);
    print(deviceStorage.read('isFirstTime'));
    deviceStorage.read('isFirstTime') != true ? Get.offAll(() => const Login())


        : Get.offAll(() => const OnboardingScreen());
  }

  Future<UserCredential> registerWithEmailIdAndPassword(String email,String password) async{
    try{
      return await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch(e){
      throw "Something went wrong , Please try Again";
    }
  }
}