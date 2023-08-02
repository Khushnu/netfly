import 'package:flutter/material.dart';
import 'package:netfly/Screens/login_screen.dart';
import 'package:netfly/Screens/register_screen.dart';
import 'package:netfly/Widgets/category_widget.dart';
import 'package:netfly/Widgets/topwidget.dart';
import '../Widgets/drawer_widget.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({super.key});

  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
    final currentscaffoldsate = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
            key: currentscaffoldsate,
            appBar: AppBar(
              title: const Text('1963 Bar & Restaurant'),
              centerTitle: false,
              backgroundColor: const Color(0xff183861),
              actions:  [
              Row(
                children: [
                   TextButton( 
                  onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen())) ,
                  child: const Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),), 
                  const VerticalDivider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 5, 
                    endIndent: 5,
                  ), 
                   TextButton( 
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> const RegisterScreen())),
                  child: const Text('Register', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
                ],
              )
              ],
            ),
            backgroundColor: const Color(0xffF5F5F5),
            endDrawer: const DrawerWidget(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  // ignore: sized_box_for_whitespace
                  const TopWidget(),
                  const CategoryWidget(),
                
                  const SizedBox(
                    height: 7,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: screenwidth,
                    height: 40,
                    color: const Color(0xff183861),
                    child: const Center(
                      child: Text(
                        'Powered by Grub direct',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}