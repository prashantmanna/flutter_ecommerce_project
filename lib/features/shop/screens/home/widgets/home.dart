import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../common/custom_shapes/PrimaryHeaderContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}






