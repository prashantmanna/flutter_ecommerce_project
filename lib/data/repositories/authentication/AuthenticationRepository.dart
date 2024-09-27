
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ecommerce_project/data/repositories/user/user_repository.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/onboardingpage/onboarding.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_ecommerce_project/navigation_menu.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance => Get.find();
  final deviceStorage = GetStorage();
  final auth = FirebaseAuth.instance;

  User? get authUser => auth.currentUser;
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async{
    final user = auth.currentUser;
    if(user != null){
      if(user.emailVerified){
        Get.offAll(()=>const NavigationMenu());
      }else{
        Get.offAll(()=>VerifyEmail(email: auth.currentUser?.email));
      }
    }
    else {
      deviceStorage.writeIfNull('isFirstTime',true);
      print(deviceStorage.read('isFirstTime'));
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const Login())
          : Get.offAll(() => const OnboardingScreen());
    }
  }

  Future<UserCredential> registerWithEmailIdAndPassword(String email,String password) async{
    try{
      return await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch(e){
      throw "Something went wrong , Please try Again";
    }
  }


  Future<UserCredential> loginWithEmailIdAndPassword(String email,String password) async{
    try{
      return await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      throw "Something went wrong , Please try again!";
    }
  }

  Future<UserCredential?> signInWithGoogle() async{
    try{
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleSignInAuthentication = await userAccount?.authentication;

      final credentials = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication?.accessToken,
        idToken: googleSignInAuthentication?.idToken
      );
      return await FirebaseAuth.instance.signInWithCredential(credentials);

    }catch (e){
      if(kDebugMode) print('Something went wrong: $e');
      return null;
    }
  }
  Future<void> sendEmail() async{
    try{
      await auth.currentUser?.sendEmailVerification();
    }
    catch(e){
      throw "Something went wrong, Please try again!";
    }
  }
  Future<void> logout() async{
    try{
      await GoogleSignIn().signOut();
      await FirebaseAuth.instance.signOut();
      Get.offAll(()=>const Login());
    }catch (e){
      throw "Something went wrong , Please Try Again";
    }
  }

  Future<void> sendPasswordEmailReset(String email)async{
    try{
      await auth.sendPasswordResetEmail(email: email);
    }catch(e){
      throw "Something went wrong,Please try again";
    }
  }

  Future<void> reAuthenticateWithEmailIdAndPassword(String email,String password) async{
    try{
      AuthCredential authCredential = EmailAuthProvider.credential(email: email, password: password);
      await auth.currentUser!.reauthenticateWithCredential(authCredential);
    }catch(e){
      throw "Something went wrong, Please try again";
    }
  }
  Future<void> deleteAccount() async{
    try{
      await UserRepository.instance.removeUserRecord(auth.currentUser!.uid);
      await auth.currentUser!.delete();
    }catch(e){
      throw "Something went wrong, Please try again";
    }
  }
}