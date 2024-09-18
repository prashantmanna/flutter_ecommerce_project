import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/app.dart';
import 'package:flutter_ecommerce_project/firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  ).then((FirebaseApp val) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
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


