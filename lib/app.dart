import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    print("current height ${MediaQuery.of(context).size.height}");
    print("current width ${MediaQuery.of(context).size.width}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: Scaffold(body: Center(child: Container(child: Text("Hello World",style: TextStyle(color: Colors.black),)))),
    );
  }
}