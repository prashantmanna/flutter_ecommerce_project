import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/onboardingpage/onboarding.dart';
import 'package:flutter_ecommerce_project/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    print("current height ${MediaQuery.of(context).size.height}");
    print("current width ${MediaQuery.of(context).size.width}");
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}