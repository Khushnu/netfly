import 'package:flutter/material.dart';
import 'package:netfly/Screens/login_screen.dart';
import 'package:netfly/Screens/register_screen.dart';
import 'package:netfly/Widgets/drawercomponents_widget.dart';
import 'package:netfly/main.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: screenWidth,
            height: 58, 
            color:const Color(0xff183861),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               const Text('1965 Bar & Restraunt', style: TextStyle(color: Colors.white, fontSize: 20),), 
                const Spacer(),
                IconButton(onPressed: () => Navigator.of(context).pop(), icon: const Icon(Icons.close, color: Colors.white,))
              ],
            ),
          ), 
           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             DrawerComponentWidget(title: 'Menu Items', icon: Icons.fastfood_outlined, onTap: ()=> print('Menu Item')), 
             DrawerComponentWidget(title: 'Order History', icon: Icons.history, onTap: ()=> print('order history'),), 
             DrawerComponentWidget(title: 'Saved Card', icon:Icons.save, onTap: ()=> print('saved card'), ), 
             DrawerComponentWidget(title: 'My Profile', icon:Icons.person, onTap: ()=> print('profile'),), 
             DrawerComponentWidget(title: 'My Reservations', icon:Icons.save, onTap: ()=> print('reservation'),), 
              DrawerComponentWidget(title: 'Log in', icon:Icons.login, onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> const LoginScreen())),), 
               DrawerComponentWidget(title: 'Register', icon:Icons.app_registration, onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> const RegisterScreen())),)
           ],
          )
        ],
      ),
    );
  }
}