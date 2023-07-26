import 'package:flutter/material.dart';
import 'package:netfly/main.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text, required this.fontSize, this.color});
  final String text;
  final double fontSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    double spacer = 1; 
    if(screenWidth < 530){
      spacer = 0.8;
    }
    return Text(text, style: TextStyle(fontSize:fontSize * spacer, 
    fontWeight: FontWeight.bold, color: color),);
  }
}