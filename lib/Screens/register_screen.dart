import 'package:flutter/material.dart';
import 'package:netfly/ResponiveHelper/responsive.dart';
import 'package:netfly/Screens/login_screen.dart';
import 'package:netfly/Widgets/dropdown_widget.dart';

import '../Widgets/signinbutton_widget.dart';
import '../Widgets/signinwithgoogle_widget.dart';
import '../Widgets/textinput_widget.dart';
import '../main.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    return Responsive(mobileScreen: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('1953 Bar And Restaurant', 
            style: TextStyle(
              color: Colors.black, fontSize: 26,
               fontWeight: FontWeight.bold),),
               const SizedBox(
                height: 20,
               ),
            Container(
              height: 550, 
              width: screenWidth * 0.6,
              decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(12), 
               boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300, 
                  spreadRadius: 3, 
                  blurRadius: 2
                )
               ]
              ),
              padding: const EdgeInsets.all(10),
             child:     Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const SizedBox(
                  height: 15,
                ),
              const Text('Create Your Account', style: TextStyle(color: Colors.black, fontSize: 18, 
              fontWeight: FontWeight.bold),), 
               const SizedBox(height: 7,), 
                const SizedBox(height: 15,), 
                const TextInputWidget(hintText: 'Name', ), 
                const SizedBox(height: 15,), 
                const TextInputWidget(hintText: 'Email', ), 
                const SizedBox(height: 10,), 
                 DropdownTextField(textEditingController: textEditingController),
                const SizedBox(height: 10,), 
                const TextInputWidget(hintText: 'Password', suffixicon: Icons.visibility,),
                const SizedBox(height: 10,),  
                const TextInputWidget(hintText: 'Confirm Passowrd', suffixicon: Icons.visibility,), 
                const SizedBox(
                  height: 13
                ),
                const SignInButtonWidget(text: 'Sign Up'), 
                const SizedBox(
                  height: 10
                ),
              const SizedBox(
                height: 10,
               ), 
               TextButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> const LoginScreen())),
                child: const Text('Already Have an Account? Login', style: TextStyle(color: Colors.grey),)), 
              const SizedBox(height: 10,), 
               const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 10,
                      color: Colors.black,
                      indent: 5,
                    ),
                  ), 
                  Text('Or', 
                  style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),), 
                 Expanded(
                   child: Divider(
                      endIndent: 10,
                      color: Colors.black,
                      indent: 5,
                    ),
                 ), 
                ],
              ), 
               const SizedBox(height: 10,), 
              const SignInWithGoogle()    
              ],
             ),
            ),
          ],
        ),
      ),
    ) , mediumScreen: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('1953 Bar And Restaurant', 
            style: TextStyle(
              color: Colors.black, fontSize: 26,
               fontWeight: FontWeight.bold),),
               const SizedBox(
                height: 20,
               ),
            Container(
              height: 550, 
              width: screenWidth * 0.5,
              decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(12), 
               boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300, 
                  spreadRadius: 3, 
                  blurRadius: 2
                )
               ]
              ),
              padding: const EdgeInsets.all(10),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const SizedBox(
                  height: 15,
                ),
              const Text('Create Your Account', style: TextStyle(color: Colors.black, fontSize: 18, 
              fontWeight: FontWeight.bold),), 
               const SizedBox(height: 7,), 
                const SizedBox(height: 15,), 
                const TextInputWidget(hintText: 'Name', ), 
                const SizedBox(height: 15,), 
                const TextInputWidget(hintText: 'Email', ), 
                const SizedBox(height: 10,), 
                 DropdownTextField(textEditingController: textEditingController),
                const SizedBox(height: 10,), 
                const TextInputWidget(hintText: 'Password', suffixicon: Icons.visibility,),
                const SizedBox(height: 10,),  
                const TextInputWidget(hintText: 'Confirm Passowrd', suffixicon: Icons.visibility,), 
                const SizedBox(
                  height: 13
                ),
                const SignInButtonWidget(text: 'Sign Up'), 
                const SizedBox(
                  height: 10
                ),
              const SizedBox(
                height: 10,
               ), 
               TextButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> const LoginScreen())),
                child: const Text('Already Have an Account? Login', style: TextStyle(color: Colors.grey),)), 
              const SizedBox(height: 10,), 
               const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 10,
                      color: Colors.black,
                      indent: 5,
                    ),
                  ), 
                  Text('Or', 
                  style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),), 
                 Expanded(
                   child: Divider(
                      endIndent: 10,
                      color: Colors.black,
                      indent: 5,
                    ),
                 ), 
                ],
              ), 
               const SizedBox(height: 10,), 
              const SignInWithGoogle()    
              ],
             ),
            ),
          ],
        ),
      ),
    ), largeScreen: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('1953 Bar And Restaurant', 
            style: TextStyle(
              color: Colors.black, fontSize: 26,
               fontWeight: FontWeight.bold),),
               const SizedBox(
                height: 20,
               ),
            Container(
              height: 550, 
              width: screenWidth * 0.4,
              decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(12), 
               boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300, 
                  spreadRadius: 3, 
                  blurRadius: 2
                )
               ]
              ),
              padding: const EdgeInsets.all(10),
             child:     Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const SizedBox(
                  height: 15,
                ),
              const Text('Create Your Account', style: TextStyle(color: Colors.black, fontSize: 18, 
              fontWeight: FontWeight.bold),), 
               const SizedBox(height: 7,), 
                const SizedBox(height: 15,), 
                const TextInputWidget(hintText: 'Name', ), 
                const SizedBox(height: 15,), 
                const TextInputWidget(hintText: 'Email', ), 
                const SizedBox(height: 10,), 
                 DropdownTextField(textEditingController: textEditingController),
                const SizedBox(height: 10,), 
                const TextInputWidget(hintText: 'Password', suffixicon: Icons.visibility,),
                const SizedBox(height: 10,),  
                const TextInputWidget(hintText: 'Confirm Passowrd', suffixicon: Icons.visibility,), 
                const SizedBox(
                  height: 13
                ),
                const SignInButtonWidget(text: 'Sign Up'), 
                const SizedBox(
                  height: 10
                ),
              const SizedBox(
                height: 10,
               ), 
               TextButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> const LoginScreen())),
                child: const Text('Already Have an Account? Login', style: TextStyle(color: Colors.grey),)), 
              const SizedBox(height: 10,), 
               const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 10,
                      color: Colors.black,
                      indent: 5,
                    ),
                  ), 
                  Text('Or', 
                  style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),), 
                 Expanded(
                   child: Divider(
                      endIndent: 10,
                      color: Colors.black,
                      indent: 5,
                    ),
                 ), 
                ],
              ), 
               const SizedBox(height: 10,), 
              const SignInWithGoogle()    
              ],
             ),
            ),
          ],
        ),
      ),
    ));
  }
}