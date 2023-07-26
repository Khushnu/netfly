import 'package:flutter/material.dart';
import 'package:netfly/ResponiveHelper/responsive.dart';
import 'package:netfly/Widgets/category_widget.dart';
import 'package:netfly/Widgets/deleiveryoptions_widget.dart';
import 'package:netfly/Widgets/drawer_widget.dart';
import 'package:netfly/Widgets/topwidget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final currentscaffoldsate = GlobalKey<ScaffoldState>();
  double initialrating = 0;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    //print(screenwidth);
    return Responsive.isMobileScreen(context)
        ? Scaffold(
            key: currentscaffoldsate,
            appBar: AppBar(
              title: const Text('1963 Bar & Restaurant'),
              centerTitle: false,
              backgroundColor: const Color(0xff183861),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                ),
                IconButton(
                    onPressed: () {
                      currentscaffoldsate.currentState!.openEndDrawer();
                    },
                    icon: const Icon(Icons.menu))
              ],
            ),
            backgroundColor: const Color(0xffF5F5F5),
            endDrawer: const DrawerWidget(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  // ignore: sized_box_for_whitespace
                  TopWidget(),
                  CategoryWidget(),
                  DeliveryOptionWidget(),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    width: screenwidth,
                    height: 40,
                    color: Color(0xff183861),
                    child: Center(
                      child: Text(
                        'Powered by Grub direct',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        : const Text('data');
  }
}
