import 'package:flutter/material.dart';
import '../../../../../common/custom_shapes/PrimaryHeaderContainer.dart';
import 'home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  home_appbar()
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}










