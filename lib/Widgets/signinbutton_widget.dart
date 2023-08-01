import 'package:flutter/material.dart';
import 'package:netfly/ResponiveHelper/responsive.dart';
import 'package:netfly/main.dart';

class SignInButtonWidget extends StatefulWidget {
  const SignInButtonWidget({super.key, required this.text});
  final String text;

  @override
  State<SignInButtonWidget> createState() => _SignInButtonWidgetState();
}

class _SignInButtonWidgetState extends State<SignInButtonWidget> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Responsive(mobileScreen:  InkWell( 
      onTap: (){},
      child: Container(
                    height: 40, 
                    width: screenWidth * 0.8,
                   
                    decoration: BoxDecoration(
                      color: const Color(0xff183861),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        
                      )
                    ),
                    child:  Center(
                      child: Text(widget.text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
    ), mediumScreen:  InkWell( 
      onTap: (){},
      child: Container(
                    height: 40, 
                    width: screenWidth * 0.6,
                   
                    decoration: BoxDecoration(
                      color: const Color(0xff183861),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        
                      )
                    ),
                    child:  Center(
                      child: Text(widget.text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
    ), largeScreen:  InkWell( 
      onTap: (){},
      child: Container(
                    height: 40, 
                    width: screenWidth * 0.6,
                   
                    decoration: BoxDecoration(
                      color: const Color(0xff183861),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        
                      )
                    ),
                    child:  Center(
                      child: Text(widget.text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
    ));
  }
}