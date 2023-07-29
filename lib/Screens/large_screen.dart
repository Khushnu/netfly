import 'package:flutter/material.dart';
import 'package:netfly/Widgets/category_widget.dart';
import 'package:netfly/Widgets/deleiveryoptions_widget.dart';
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
              actions: const [
              Row(
                children: [
                    Text('Login'), 
                  Divider(
                    
                  ), 
                  Text('Register')
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
                  const DeliveryOptionWidget(),
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
                  )
                ],
              ),
            ),
          );
  }
}