import 'package:flutter/material.dart';
import 'package:netfly/Widgets/category_widget.dart';
import 'package:netfly/Widgets/deleiveryoptions_widget.dart';
import 'package:netfly/Widgets/drawer_widget.dart';
import 'package:netfly/Widgets/header_widget.dart';
import 'package:netfly/Widgets/topwidget.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final currentscaffoldsate = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
            key: currentscaffoldsate,
           
            endDrawer: const DrawerWidget(),
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: const Text('1965 Restaurant & Bar'),
                   backgroundColor: const Color(0xff183861),
                   centerTitle: false,
                   // expandedHeight: 450,
                    toolbarHeight: 50,
                   actions: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)), 
                    IconButton(onPressed: (){
                      currentscaffoldsate.currentState!.openEndDrawer();
                    }, icon: const Icon(Icons.menu))
                   ],
                  
                ),
                const SliverToBoxAdapter(
                  child: TopWidget(),
                ),
              
                 SliverPersistentHeader(
        pinned: true, 
        floating: true,
        delegate: HeaderWidget()),    
                SliverList(
                  delegate: SliverChildListDelegate(
                    [ 
                     
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
                      ),
                    ]
                  ),
                ),
              ]
            ),
          );
  }
}