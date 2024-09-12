import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import 'CircularWidget.dart';
import 'CurvedEdgeWidget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(

        color: Scolors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Container(
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CircularWidget(bgColor: Scolors.textWhite.withOpacity(0.1),)),
              Positioned(
                  top: 100,
                  right: -300,
                  child: CircularWidget(bgColor: Scolors.textWhite.withOpacity(0.1),)),
              child,


            ],
          ),
        ),
      ),
    );
  }
}