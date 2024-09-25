import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/app.dart';
import 'package:flutter_ecommerce_project/data/repositories/authentication/AuthenticationRepository.dart';
import 'package:flutter_ecommerce_project/firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
Future<void> main() async {

  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();


 FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  ).then((FirebaseApp val) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(), // Your Splash screen
    );
  }
}


