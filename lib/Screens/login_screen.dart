
import 'package:flutter/material.dart';
import 'package:netfly/ResponiveHelper/responsive.dart';
import 'package:netfly/Screens/register_screen.dart';
import 'package:netfly/Widgets/forgot_and_create_button_widget.dart';
import 'package:netfly/Widgets/signinbutton_widget.dart';
import 'package:netfly/Widgets/signinwithgoogle_widget.dart';
import 'package:netfly/Widgets/textinput_widget.dart';
import 'package:netfly/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    return Responsive(mobileScreen: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('1953 Bar And Restaurant', style: TextStyle(
              color: Colors.black, fontSize: 26,
               fontWeight: FontWeight.bold),),
               const SizedBox(
                height: 20,
               ),
            Container(
              height: 400, 
              width: screenWidth * 0.5 + 120,
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
            
             child:    Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const SizedBox(
                  height: 15,
                ),
              const Text('Hi, Welcome Back', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),), 
               const SizedBox(height: 7,), 
               const Text('Enter your details to login.', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),),
                
                const SizedBox(height: 15,), 
                const TextInputWidget(hintText: 'Email', ), 
                const SizedBox(height: 10,), 
                const TextInputWidget(hintText: 'Password', suffixicon: Icons.visibility,), 
                const SizedBox(
                  height: 13
                ),
                const SignInButtonWidget(text: 'Sign In'), 
                const SizedBox(
                  height: 10
                ),
               ForgotAndCreateWidget(forgottext: 'Forgot Password?', createText: 'New Customer, Create Account', registerscreen: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> const RegisterScreen())),),
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
    ),
    mediumScreen: Scaffold(
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
              height: 400, 
              width: screenWidth * 0.4 + 40,
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
             child:    Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const SizedBox(
                  height: 15,
                ),
              const Text('Hi, Welcome Back', style: TextStyle(color: Colors.black, fontSize: 18, 
              fontWeight: FontWeight.bold),), 
               const SizedBox(height: 7,), 
               const Text('Enter your details to login.', style: TextStyle(color: Colors.grey, fontSize: 15, 
               fontWeight: FontWeight.bold),),
                const SizedBox(height: 15,), 
                const TextInputWidget(hintText: 'Email', ), 
                const SizedBox(height: 10,), 
                const TextInputWidget(hintText: 'Password', suffixicon: Icons.visibility,), 
                const SizedBox(
                  height: 13
                ),
                const SignInButtonWidget(text: 'Sign In'), 
                const SizedBox(
                  height: 10
                ),
               ForgotAndCreateWidget(forgottext: 'Forgot Password?', createText: 'New Customer, Create Account', registerscreen: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> const RegisterScreen())),), 
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
    ) , largeScreen: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('1953 Bar And Restaurant', style: TextStyle(
              color: Colors.black, fontSize: 26,
               fontWeight: FontWeight.bold),),
               const SizedBox(
                height: 20,
               ),
            Container(
              height: 400, 
              width: screenWidth * 0.4 + 50,
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
            
             child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const SizedBox(
                  height: 15,
                ),
              const Text('Hi, Welcome Back', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),), 
               const SizedBox(height: 7,), 
               const Text('Enter your details to login.', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),),
                
                const SizedBox(height: 15,), 
                const TextInputWidget(hintText: 'Email', ), 
                const SizedBox(height: 10,), 
                const TextInputWidget(hintText: 'Password', suffixicon: Icons.visibility,), 
                const SizedBox(
                  height: 13
                ),
                const SignInButtonWidget(text: 'Sign In'), 
                const SizedBox(
                  height: 10
                ),
              ForgotAndCreateWidget(forgottext: 'Forgot Password?', createText: 'New Customer, Create Account', registerscreen: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> const RegisterScreen())),),  
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