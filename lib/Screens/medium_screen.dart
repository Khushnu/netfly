import 'package:flutter/material.dart';
import 'package:netfly/Screens/login_screen.dart';
import 'package:netfly/Screens/register_screen.dart';
import 'package:netfly/Widgets/drawer_widget.dart';
import 'package:netfly/Widgets/header_widget.dart';
import 'package:netfly/Widgets/topwidget.dart';

import '../Widgets/category_widget.dart';

class MediumScreen extends StatefulWidget {
  const MediumScreen({super.key});

  @override
  State<MediumScreen> createState() => _MediumScreenState();
}

class _MediumScreenState extends State<MediumScreen> {
  
  final currentscaffoldsate = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
            key: currentscaffoldsate,
            backgroundColor: const Color(0xffF5F5F5),
            endDrawer: const DrawerWidget(),
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                   title: const Text('1963 Bar & Restaurant'),
              centerTitle: false,
              pinned: true,
              backgroundColor: const Color(0xff183861),
              actions:  [
               Row(
                children: [
                  TextButton( 
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> const LoginScreen())),
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
                
            SliverToBoxAdapter(
              child: TopWidget(),
            ),


                SliverPersistentHeader(
                  pinned: true, 
                  floating: true,
                  delegate: HeaderWidget()),
                
                SliverList(
                  delegate: SliverChildListDelegate(
                    [ const CategoryWidget(),
                    //  const DeliveryOptionWidget(),
                    const SizedBox(
                      height: 7,
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
                    ),
                    ]
                  ),
                ),
              ]
            ),
          );
  }
}