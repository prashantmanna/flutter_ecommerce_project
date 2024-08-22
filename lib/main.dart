import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(), // Your Splash screen
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=> App()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/app.png"),
            Text("Shopnow",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
          ],
        ),
      ),
    );
  }
}
