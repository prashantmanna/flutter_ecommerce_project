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
      home: App(), // Your Splash screen
    );
  }
}


