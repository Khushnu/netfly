import 'package:flutter/material.dart';

class Responsive extends StatelessWidget{ 

const Responsive({super.key,required this.mobileScreen, required this.mediumScreen, required this.largeScreen,});

final Widget? mobileScreen; 
final Widget? mediumScreen; 
final Widget largeScreen;

static bool isMobileScreen(BuildContext buildContext){
  return MediaQuery.of(buildContext).size.width < 800;  
}

static bool isMediumScreen(BuildContext buildContext){
  return MediaQuery.of(buildContext).size.width >= 800 && MediaQuery.of(buildContext).size.width <=1200; 
}

static bool isLargeScreen(BuildContext buildContext){
  return MediaQuery.of(buildContext).size.width > 1200;
}

  @override
  Widget build(BuildContext context) {
  return LayoutBuilder(builder: (_ , contstraint){
    if(contstraint.maxWidth > 1200){
      return largeScreen; 
    } else if (contstraint.maxWidth >= 800 && contstraint.maxWidth <=1200){
      return mediumScreen ?? largeScreen;
    } else {
      return mobileScreen ?? largeScreen;
    }
  });
  }

 



}