import 'package:flutter/material.dart';
import 'package:netfly/Screens/homepage_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
double screenWidth = 0;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageScreen(),
    );
  }
}