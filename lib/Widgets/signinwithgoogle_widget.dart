import 'package:flutter/material.dart';
import 'package:netfly/ResponiveHelper/responsive.dart';

import '../main.dart';

class SignInWithGoogle extends StatefulWidget {
  const SignInWithGoogle({super.key});

  @override
  State<SignInWithGoogle> createState() => _SignInWithGoogleState();
}

class _SignInWithGoogleState extends State<SignInWithGoogle> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    return Responsive(mobileScreen: Container(
            height: 40, 
            width: screenWidth* 0.8, 
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200, 
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30, 
                  width: 30,
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png', 
                  color: Colors.blue.shade200,)), 
                  const Spacer(),
                const Text('Sign In with Goolge', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),), 
                const Spacer()
              ],
            ),
          ), mediumScreen: Container(
            height: 40, 
            width: screenWidth* 0.6 - 10, 
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200, 
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30, 
                  width: 30,
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png', 
                  color: Colors.blue.shade200,)), 
                  const Spacer(),
                const Text('Sign In with Goolge', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),), 
                const Spacer()
              ],
            ),
          ), largeScreen: Container(
            height: 40, 
            width: screenWidth* 0.6 - 10, 
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200, 
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30, 
                  width: 30,
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png', 
                  color: Colors.blue.shade200,)), 
                  const Spacer(),
                const Text('Sign In with Goolge', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),), 
                const Spacer()
              ],
            ),
          )); 
  }
}