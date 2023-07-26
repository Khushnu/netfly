import 'package:flutter/material.dart';
import 'package:netfly/main.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    double spacer = 0; 
    if(screenWidth < 500){
      spacer = 20;
    } else {
      spacer = 40;
    }
    return SizedBox(
      width: width * spacer,
    );
  }
}