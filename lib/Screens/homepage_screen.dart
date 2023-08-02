import 'package:flutter/material.dart';
import 'package:netfly/ResponiveHelper/responsive.dart';
import 'package:netfly/Screens/large_screen.dart';
import 'package:netfly/Screens/medium_screen.dart';
import 'package:netfly/Screens/mobile_screens.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
   return const Responsive(mobileScreen: MobileScreen(), mediumScreen: MediumScreen(), largeScreen: LargeScreen());
  }
  
}