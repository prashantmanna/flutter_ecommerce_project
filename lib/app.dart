import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/features/authentication/screens/onboardingpage/onboarding.dart';
import 'package:flutter_ecommerce_project/utils/constants/colors.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
import 'package:flutter_ecommerce_project/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme:SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: Scaffold(backgroundColor: dark?Scolors.dark : Scolors.light,body: Center(child: CircularProgressIndicator(color: Colors.white,),),),
    );
  }
}